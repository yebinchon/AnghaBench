; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_create_vm.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }

@.str = private unnamed_addr constant [21 x i8] c"failed to create vm\0A\00", align 1
@NJS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add external protos\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to add path\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"NJS_PATH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, %struct.TYPE_8__*)* @njs_create_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @njs_create_vm(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32* @njs_vm_create(%struct.TYPE_8__* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @njs_stderror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %106

18:                                               ; preds = %2
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @njs_externals_init(i32* %19, i32 %22)
  %24 = load i64, i64* @NJS_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @njs_stderror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %106

28:                                               ; preds = %18
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32* %41, i32** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @njs_strlen(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @njs_vm_add_path(i32* %51, %struct.TYPE_9__* %10)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @NJS_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %35
  %57 = call i32 @njs_stderror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %106

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %29

62:                                               ; preds = %29
  %63 = call i64 @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  store i32* %68, i32** %3, align 8
  br label %106

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %101, %69
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @njs_strchr(i32* %71, i8 signext 58)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @njs_strlen(i32* %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi i64 [ %83, %77 ], [ %86, %84 ]
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @njs_vm_add_path(i32* %90, %struct.TYPE_9__* %10)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @NJS_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @njs_stderror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %106

97:                                               ; preds = %87
  %98 = load i32*, i32** %6, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %104

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32* %103, i32** %7, align 8
  br label %70

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  store i32* %105, i32** %3, align 8
  br label %106

106:                                              ; preds = %104, %95, %67, %56, %26, %16
  %107 = load i32*, i32** %3, align 8
  ret i32* %107
}

declare dso_local i32* @njs_vm_create(%struct.TYPE_8__*) #1

declare dso_local i32 @njs_stderror(i8*) #1

declare dso_local i64 @njs_externals_init(i32*, i32) #1

declare dso_local i64 @njs_strlen(i32*) #1

declare dso_local i64 @njs_vm_add_path(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32* @njs_strchr(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
