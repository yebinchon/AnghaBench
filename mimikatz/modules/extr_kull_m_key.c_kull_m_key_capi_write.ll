; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_write.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__* }

@FALSE = common dso_local global i32 0, align 4
@KULL_M_KEY_CAPI_BLOB = common dso_local global i32 0, align 4
@pName = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_key_capi_write(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @KULL_M_KEY_CAPI_BLOB, align 4
  %11 = load i32, i32* @pName, align 4
  %12 = call i64 @FIELD_OFFSET(i32 %10, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 14
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @LPTR, align 4
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @LocalAlloc(i32 %46, i64 %48)
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %52, label %166

52:                                               ; preds = %3
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = load i32, i32* @KULL_M_KEY_CAPI_BLOB, align 4
  %58 = load i32, i32* @pName, align 4
  %59 = call i64 @FIELD_OFFSET(i32 %57, i32 %58)
  %60 = call i32 @RtlCopyMemory(i64 %55, %struct.TYPE_4__* %56, i64 %59)
  %61 = load i32, i32* @KULL_M_KEY_CAPI_BLOB, align 4
  %62 = load i32, i32* @pName, align 4
  %63 = call i64 @FIELD_OFFSET(i32 %61, i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 15
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 14
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @RtlCopyMemory(i64 %66, %struct.TYPE_4__* %69, i64 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 14
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 13
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @RtlCopyMemory(i64 %79, %struct.TYPE_4__* %82, i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 12
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 11
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @RtlCopyMemory(i64 %92, %struct.TYPE_4__* %95, i64 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 10
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @RtlCopyMemory(i64 %105, %struct.TYPE_4__* %108, i64 %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @RtlCopyMemory(i64 %118, %struct.TYPE_4__* %121, i64 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @RtlCopyMemory(i64 %131, %struct.TYPE_4__* %134, i64 %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @RtlCopyMemory(i64 %144, %struct.TYPE_4__* %147, i64 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @RtlCopyMemory(i64 %157, %struct.TYPE_4__* %160, i64 %163)
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %52, %3
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
