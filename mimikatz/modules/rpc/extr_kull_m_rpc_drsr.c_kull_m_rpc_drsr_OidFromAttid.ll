; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_OidFromAttid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_OidFromAttid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8**, i64 }

@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_rpc_drsr_OidFromAttid(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 16
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %40, %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  br label %43

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %16

43:                                               ; preds = %32, %16
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %125

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %50, 128
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 2
  %54 = add nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @LPTR, align 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @LocalAlloc(i32 %57, i64 %59)
  %61 = inttoptr i64 %60 to i8**
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8** %61, i8*** %62, align 8
  %63 = icmp ne i8** %61, null
  br i1 %63, label %64, label %124

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @RtlCopyMemory(i8** %66, i32 %69, i32 %72)
  %74 = load i64, i64* %7, align 8
  %75 = icmp slt i64 %74, 128
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load i64, i64* %7, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %80, i64 %84
  store i8* %78, i8** %85, align 8
  br label %116

86:                                               ; preds = %64
  %87 = load i64, i64* %7, align 8
  %88 = icmp sge i64 %87, 32768
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %90, 32768
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %7, align 8
  %94 = sdiv i64 %93, 128
  %95 = srem i64 %94, 128
  %96 = add nsw i64 %95, 128
  %97 = inttoptr i64 %96 to i8*
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %99, i64 %103
  store i8* %97, i8** %104, align 8
  %105 = load i64, i64* %7, align 8
  %106 = srem i64 %105, 128
  %107 = inttoptr i64 %106 to i8*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %109, i64 %114
  store i8* %107, i8** %115, align 8
  br label %116

116:                                              ; preds = %92, %76
  %117 = call i32 @kull_m_asn1_Eoid2DotVal(%struct.TYPE_9__* %10, i32** %5)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32* null, i32** %5, align 8
  br label %120

120:                                              ; preds = %119, %116
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = call i32 @LocalFree(i8** %122)
  br label %124

124:                                              ; preds = %120, %46
  br label %125

125:                                              ; preds = %124, %43
  %126 = load i32*, i32** %5, align 8
  ret i32* %126
}

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i8**, i32, i32) #1

declare dso_local i32 @kull_m_asn1_Eoid2DotVal(%struct.TYPE_9__*, i32**) #1

declare dso_local i32 @LocalFree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
