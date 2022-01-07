; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_dfa_match.c_more_workspace.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_dfa_match.c_more_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* (i32, i32)* }

@UINT32_MAX = common dso_local global i32 0, align 4
@RWS_RSIZE = common dso_local global i32 0, align 4
@RWS_ANCHOR_SIZE = common dso_local global i32 0, align 4
@PCRE2_ERROR_HEAPLIMIT = common dso_local global i32 0, align 4
@PCRE2_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, i32, %struct.TYPE_8__*)* @more_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @more_workspace(%struct.TYPE_9__** %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  br label %109

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UINT32_MAX, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @UINT32_MAX, align 4
  %31 = sdiv i32 %30, 2
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 2
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i32 [ %31, %29 ], [ %36, %32 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 256
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %53, %37
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 256
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @RWS_RSIZE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* @RWS_ANCHOR_SIZE, align 4
  %72 = add i32 %70, %71
  %73 = icmp ult i32 %67, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @PCRE2_ERROR_HEAPLIMIT, align 4
  store i32 %75, i32* %4, align 4
  br label %119

76:                                               ; preds = %62
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__* (i32, i32)*, %struct.TYPE_9__* (i32, i32)** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.TYPE_9__* %80(i32 %84, i32 %88)
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %9, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = icmp eq %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* @PCRE2_ERROR_NOMEMORY, align 4
  store i32 %93, i32* %4, align 4
  br label %119

94:                                               ; preds = %76
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %108, align 8
  br label %109

109:                                              ; preds = %94, %18
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RWS_ANCHOR_SIZE, align 4
  %114 = sub i32 %112, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %109, %92, %74
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
