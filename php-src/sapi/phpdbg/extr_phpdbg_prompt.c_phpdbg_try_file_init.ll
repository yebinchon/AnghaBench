; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_prompt.c_phpdbg_try_file_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_prompt.c_phpdbg_try_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phpdbg_init_state = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PHPDBG_MAX_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"initfailure\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"type=\22openfile\22 file=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to open %s for initialization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phpdbg_try_file_init(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.phpdbg_init_state, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @VCWD_STAT(i8* %15, i32* %7)
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32* @PHPDBG_MAX_CMD, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = bitcast %struct.phpdbg_init_state* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds %struct.phpdbg_init_state, %struct.phpdbg_init_state* %11, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %36, %23
  %32 = load i32, i32* @PHPDBG_MAX_CMD, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @fgets(i8* %27, i32 %32, i32* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @phpdbg_line_init(i8* %27, %struct.phpdbg_init_state* %11)
  br label %31

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.phpdbg_init_state, %struct.phpdbg_init_state* %11, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.phpdbg_init_state, %struct.phpdbg_init_state* %11, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %49)
  br label %53

50:                                               ; preds = %18
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @phpdbg_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %14, %3
  ret void
}

declare dso_local i32 @VCWD_STAT(i8*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @phpdbg_line_init(i8*, %struct.phpdbg_init_state*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @phpdbg_error(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
