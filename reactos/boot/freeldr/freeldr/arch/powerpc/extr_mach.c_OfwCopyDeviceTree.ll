; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_OfwCopyDeviceTree.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_OfwCopyDeviceTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AdapterClass = common dso_local global i32 0, align 4
@MultiFunctionAdapter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Warning: not getting prop %s (too long: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OfwCopyDeviceTree(i32 %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca [64 x i8], align 16
  %21 = alloca [64 x i32], align 16
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @NarrowToWide(i32* %24, i8* %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AdapterClass, align 4
  %29 = load i32, i32* @MultiFunctionAdapter, align 4
  %30 = call i32 @FldrCreateComponentKey(i32 %27, i32 %28, i32 %29, i32 0, i32 0, i32 -1, i32* null, i32* null, i32 0, i32* %22)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %31

31:                                               ; preds = %62, %46, %6
  %32 = load i32, i32* %15, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %35 = call i32 @ofw_nextprop(i32 %32, i8* %33, i8* %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %70

37:                                               ; preds = %31
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %40 = call i32 @ofw_getproplen(i32 %38, i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp sgt i32 %41, 256
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %37
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %48)
  br label %31

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %54 = call i32 @ofw_getprop(i32 %51, i8* %52, i8* %53, i32 256)
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %61 = call i32 @strcpy(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %50
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %65 = call i32 @NarrowToWide(i32* %63, i8* %64)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %68 = call i32 @strcpy(i8* %66, i8* %67)
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  store i8* %69, i8** %16, align 8
  br label %31

70:                                               ; preds = %31
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @ofw_child(i32 %71)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %96, %70
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %79 = call i32 @ofw_package_to_path(i32 %77, i8* %78, i32 256)
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %81 = call i8* @strrchr(i8* %80, i8 signext 47)
  store i8* %81, i8** %19, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i8*, i8** %19, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %19, align 8
  br label %88

87:                                               ; preds = %76
  br label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %22, align 4
  %90 = load i8*, i8** %19, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @OfwCopyDeviceTree(i32 %89, i8* %90, i32 %91, i32* %92, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %88, %87
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @ofw_peer(i32 %97)
  store i32 %98, i32* %15, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @NarrowToWide(i32*, i8*) #1

declare dso_local i32 @FldrCreateComponentKey(i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ofw_nextprop(i32, i8*, i8*) #1

declare dso_local i32 @ofw_getproplen(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @ofw_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ofw_child(i32) #1

declare dso_local i32 @ofw_package_to_path(i32, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ofw_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
