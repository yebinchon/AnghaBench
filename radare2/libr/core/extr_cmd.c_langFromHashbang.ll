; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_langFromHashbang.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_langFromHashbang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"#!/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @langFromHashbang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @langFromHashbang(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @r_sandbox_open(i8* %10, i32 %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = bitcast [128 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 128, i1 false)
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %19 = bitcast i8* %18 to i32*
  %20 = call i32 @r_sandbox_read(i32 %17, i32* %19, i32 127)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %22
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %29 = call i8* @strchr(i8* %28, i8 signext 10)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %36 = call i8* @strchr(i8* %35, i8 signext 32)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %3, align 8
  br label %49

45:                                               ; preds = %15
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @r_sandbox_close(i32 %46)
  br label %48

48:                                               ; preds = %45, %2
  store i8* null, i8** %3, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @r_sandbox_read(i32, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_sandbox_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
