; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lauxlib.c_l_alloc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lauxlib.c_l_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@EGC_ALWAYS = common dso_local global i32 0, align 4
@EGC_ON_MEM_LIMIT = common dso_local global i32 0, align 4
@EGC_ON_ALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i64)* @l_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_alloc(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = call %struct.TYPE_2__* @G(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i32 [ 0, %17 ], [ %22, %18 ]
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @free(i8* %28)
  store i8* null, i8** %5, align 8
  br label %119

30:                                               ; preds = %23
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EGC_ALWAYS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @luaC_fullgc(i32* %39)
  br label %41

41:                                               ; preds = %38, %33, %30
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @EGC_ON_MEM_LIMIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = call %struct.TYPE_2__* @G(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = call i64 (...) @system_get_free_heap_size()
  %57 = load i32*, i32** %10, align 8
  %58 = call %struct.TYPE_2__* @G(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 0, %60
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @luaC_fullgc(i32* %64)
  br label %66

66:                                               ; preds = %63, %55, %49, %44, %41
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load i32*, i32** %10, align 8
  %75 = call %struct.TYPE_2__* @G(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @EGC_ON_MEM_LIMIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32*, i32** %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = sub i64 %86, %87
  %89 = call i64 @l_check_memlimit(i32* %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i8* null, i8** %5, align 8
  br label %119

92:                                               ; preds = %84, %79, %73
  br label %93

93:                                               ; preds = %92, %70, %66
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @this_realloc(i8* %94, i64 %95, i64 %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %117

101:                                              ; preds = %93
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @EGC_ON_ALLOC_FAILURE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @luaC_fullgc(i32* %110)
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @this_realloc(i8* %112, i64 %113, i64 %114)
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %12, align 8
  br label %117

117:                                              ; preds = %109, %104, %101, %93
  %118 = load i8*, i8** %12, align 8
  store i8* %118, i8** %5, align 8
  br label %119

119:                                              ; preds = %117, %91, %27
  %120 = load i8*, i8** %5, align 8
  ret i8* %120
}

declare dso_local %struct.TYPE_2__* @G(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @luaC_fullgc(i32*) #1

declare dso_local i64 @system_get_free_heap_size(...) #1

declare dso_local i64 @l_check_memlimit(i32*, i64) #1

declare dso_local i64 @this_realloc(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
