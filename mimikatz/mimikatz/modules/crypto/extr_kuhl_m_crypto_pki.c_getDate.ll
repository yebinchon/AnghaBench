; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getDate.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getDate(i64* %0, i64* %1, i64 %2, %struct.TYPE_8__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64**, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = inttoptr i64 %12 to i64**
  store i64** %13, i64*** %11, align 8
  %14 = load i64**, i64*** %11, align 8
  %15 = getelementptr inbounds i64*, i64** %14, i64 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i64**, i64*** %11, align 8
  %20 = getelementptr inbounds i64*, i64** %19, i64 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  br label %59

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  br label %58

41:                                               ; preds = %27, %24
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %6, align 8
  store i64 %52, i64* %53, align 8
  br label %57

54:                                               ; preds = %44, %41
  %55 = load i64*, i64** %6, align 8
  %56 = call i32 @GetSystemTimeAsFileTime(i64* %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i64**, i64*** %11, align 8
  %61 = getelementptr inbounds i64*, i64** %60, i64 1
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i64**, i64*** %11, align 8
  %66 = getelementptr inbounds i64*, i64** %65, i64 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %110

70:                                               ; preds = %59
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %7, align 8
  store i64 %85, i64* %86, align 8
  br label %109

87:                                               ; preds = %73, %70
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  br label %108

100:                                              ; preds = %90, %87
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %7, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = bitcast i64* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1211924480
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %100, %95
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %64
  ret void
}

declare dso_local i32 @GetSystemTimeAsFileTime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
