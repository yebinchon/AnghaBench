; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_descriptor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@R_BIN_JAVA_CP_INTERFACEMETHOD_REF = common dso_local global i64 0, align 8
@R_BIN_JAVA_CP_METHODREF = common dso_local global i64 0, align 8
@R_BIN_JAVA_CP_FIELDREF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i64)* @r_cmd_java_get_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_cmd_java_get_descriptor(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TYPE_9__* @r_bin_java_get_item_from_bin_cp_list(i32* %15, i64 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  store i8* null, i8** %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  store i8* %22, i8** %4, align 8
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @R_BIN_JAVA_CP_INTERFACEMETHOD_REF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @R_BIN_JAVA_CP_METHODREF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @R_BIN_JAVA_CP_FIELDREF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35, %29, %23
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @r_bin_java_get_name_from_bin_cp_list(i32* %42, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = call i8* @r_bin_java_get_item_name_from_bin_cp_list(i32* %49, %struct.TYPE_9__* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = call i8* @r_bin_java_get_item_desc_from_bin_cp_list(i32* %52, %struct.TYPE_9__* %53)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %41, %35
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i8* @malloc(i32 %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %61, %58, %55
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i8* @r_bin_java_unmangle_without_flags(i8* %87, i8* %88)
  store i8* %89, i8** %13, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %13, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %90, %20
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local %struct.TYPE_9__* @r_bin_java_get_item_from_bin_cp_list(i32*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_bin_java_get_name_from_bin_cp_list(i32*, i32) #1

declare dso_local i8* @r_bin_java_get_item_name_from_bin_cp_list(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @r_bin_java_get_item_desc_from_bin_cp_list(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @r_bin_java_unmangle_without_flags(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
