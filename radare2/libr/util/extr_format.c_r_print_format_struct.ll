; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_format.c_r_print_format_struct.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_format.c_r_print_format_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i8*)*, i32, i32 }

@STRUCTPTR = common dso_local global i32 0, align 4
@NESTDEPTH = common dso_local global i32 0, align 4
@STRUCTFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Too much nested struct, recursion too deep...\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Undefined struct '%s'.\0A\00", align 1
@MUSTSEE = common dso_local global i64 0, align 8
@SEEVALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%%%ds\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"<%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i8*, i32, i32, i8*, i8*, i32)* @r_print_format_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_print_format_struct(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [128 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* %17, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @STRUCTPTR, align 4
  %28 = srem i32 %26, %27
  %29 = load i32, i32* @NESTDEPTH, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @STRUCTFLAG, align 4
  %34 = srem i32 %32, %33
  %35 = load i32, i32* @STRUCTPTR, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* @NESTDEPTH, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %10
  %40 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %122

41:                                               ; preds = %31
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** %16, align 8
  store i8* %45, i8** %22, align 8
  br label %61

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = call i8* @sdb_get(i32 %49, i8* %50, i32* null)
  store i8* %51, i8** %22, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i8* @r_type_format(i32 %57, i8* %58)
  store i8* %59, i8** %22, align 8
  br label %60

60:                                               ; preds = %54, %46
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i8*, i8** %22, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %22, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %61
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 0, i32* %11, align 4
  br label %122

71:                                               ; preds = %64
  %72 = load i64, i64* @MUSTSEE, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %71
  %75 = load i32, i32* @SEEVALUE, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 6, %79
  %81 = load i32, i32* @STRUCTPTR, align 4
  %82 = srem i32 %80, %81
  %83 = add nsw i32 10, %82
  %84 = call i32 @snprintf(i8* %78, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %22, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 48
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %92, align 8
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %95 = call i32 %93(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %102

96:                                               ; preds = %77
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %98, align 8
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %101 = call i32 %99(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %104, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 %105(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %102, %74, %71
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i8*, i8** %22, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load i8*, i8** %19, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = call i32 @r_print_format(%struct.TYPE_5__* %109, i32 %110, i32* %111, i32 %112, i8* %113, i32 %114, i8* %115, i8* %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @r_print_format_struct_size(%struct.TYPE_5__* %118, i8* %119, i32 %120, i32 0)
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %108, %68, %39
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @sdb_get(i32, i8*, i32*) #1

declare dso_local i8* @r_type_format(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @r_print_format(%struct.TYPE_5__*, i32, i32*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @r_print_format_struct_size(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
