; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_get_35_statistics.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_get_35_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_4__, %struct.page_cache }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page_cache = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@global_io_errors = common dso_local global i64 0, align 8
@global_fs_errors = common dso_local global i64 0, align 8
@rrdeng_reserved_file_descriptors = common dso_local global i64 0, align 8
@global_flushing_errors = common dso_local global i64 0, align 8
@RRDENG_NR_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_get_35_statistics(%struct.rrdengine_instance* %0, i64* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.page_cache*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %7 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %6, i32 0, i32 1
  store %struct.page_cache* %7, %struct.page_cache** %5, align 8
  %8 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %9 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 27
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %15 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 26
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %21 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %26 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %31 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %37 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 25
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %43 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 24
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %49 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 23
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 7
  store i64 %51, i64* %53, align 8
  %54 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %55 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 22
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 8
  store i64 %57, i64* %59, align 8
  %60 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %61 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 21
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 9
  store i64 %63, i64* %65, align 8
  %66 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %67 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 20
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 10
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %73 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 19
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 11
  store i64 %75, i64* %77, align 8
  %78 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %79 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 18
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 12
  store i64 %81, i64* %83, align 8
  %84 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %85 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 17
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 13
  store i64 %87, i64* %89, align 8
  %90 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %91 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 16
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %4, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 14
  store i64 %93, i64* %95, align 8
  %96 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %97 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 15
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %4, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 15
  store i64 %99, i64* %101, align 8
  %102 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %103 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 14
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %4, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 16
  store i64 %105, i64* %107, align 8
  %108 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %109 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 13
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 17
  store i64 %111, i64* %113, align 8
  %114 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %115 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 12
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %4, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 18
  store i64 %117, i64* %119, align 8
  %120 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %121 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 11
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 19
  store i64 %123, i64* %125, align 8
  %126 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %127 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 10
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %4, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 20
  store i64 %129, i64* %131, align 8
  %132 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %133 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %4, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 21
  store i64 %135, i64* %137, align 8
  %138 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %139 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %4, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 22
  store i64 %141, i64* %143, align 8
  %144 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %145 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %4, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 23
  store i64 %147, i64* %149, align 8
  %150 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %151 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %4, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 24
  store i64 %153, i64* %155, align 8
  %156 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %157 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %4, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 25
  store i64 %159, i64* %161, align 8
  %162 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %163 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %4, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 26
  store i64 %165, i64* %167, align 8
  %168 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %169 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %4, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 27
  store i64 %171, i64* %173, align 8
  %174 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %175 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %4, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 28
  store i64 %177, i64* %179, align 8
  %180 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %181 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %4, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 29
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* @global_io_errors, align 8
  %187 = load i64*, i64** %4, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 30
  store i64 %186, i64* %188, align 8
  %189 = load i64, i64* @global_fs_errors, align 8
  %190 = load i64*, i64** %4, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 31
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* @rrdeng_reserved_file_descriptors, align 8
  %193 = load i64*, i64** %4, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 32
  store i64 %192, i64* %194, align 8
  %195 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %196 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %4, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 33
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* @global_flushing_errors, align 8
  %202 = load i64*, i64** %4, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 34
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* @RRDENG_NR_STATS, align 4
  %205 = icmp eq i32 %204, 35
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
