; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/extr_pg_regress_ecpg.c_ecpg_filter.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/extr_pg_regress_ecpg.c_ecpg_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINEBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open file %s for reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not open file %s for writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"#line \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @ecpg_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecpg_filter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @LINEBUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 2) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = call i32 @exit(i32 2) #4
  unreachable

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i32, i32* @LINEBUFSIZE, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @fgets(i8* %15, i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp eq i8* %42, %15
  br i1 %43, label %44, label %88

44:                                               ; preds = %41
  %45 = call i8* @strchr(i8* %15, i8 signext 34)
  store i8* %45, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %70, %44
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i8* @strchr(i8* %63, i8 signext 47)
  %65 = icmp ne i8* %64, null
  br label %66

66:                                               ; preds = %59, %51
  %67 = phi i1 [ true, %51 ], [ %65, %59 ]
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi i1 [ false, %46 ], [ %67, %66 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %46

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @malloc(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @StrNCpy(i8* %80, i8* %82, i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @replace_string(i8* %15, i8* %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %76, %73
  br label %88

88:                                               ; preds = %87, %41
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @fputs(i8* %15, i32* %89)
  br label %36

91:                                               ; preds = %36
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @fclose(i32* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @StrNCpy(i8*, i8*, i32) #2

declare dso_local i32 @replace_string(i8*, i8*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
