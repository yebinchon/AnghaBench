; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_update_memslots.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_update_memslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memslots = type { i32*, i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i32, i64, i64 }

@KVM_MEM_SLOTS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_memslots*, %struct.kvm_memory_slot*, i32)* @update_memslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_memslots(%struct.kvm_memslots* %0, %struct.kvm_memory_slot* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_memslots*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_memslots* %0, %struct.kvm_memslots** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %20, i32 0, i32 2
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %21, align 8
  store %struct.kvm_memory_slot* %22, %struct.kvm_memory_slot** %9, align 8
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i64 %25
  %27 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %78 [
    i32 129, label %34
    i32 128, label %56
  ]

34:                                               ; preds = %3
  %35 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i64 %41
  %43 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %34
  %53 = phi i1 [ true, %34 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  br label %79

56:                                               ; preds = %3
  %57 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %66, i64 %68
  %70 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i1 [ true, %56 ], [ %73, %65 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  br label %79

78:                                               ; preds = %3
  br label %79

79:                                               ; preds = %78, %74, %52
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @KVM_MEM_SLOTS_NUM, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %89, i64 %92
  %94 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sle i64 %88, %95
  br label %97

97:                                               ; preds = %85, %80
  %98 = phi i1 [ false, %80 ], [ %96, %85 ]
  br i1 %98, label %99, label %135

99:                                               ; preds = %97
  %100 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %100, i64 %103
  %105 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %135

109:                                              ; preds = %99
  %110 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %110, i64 %112
  %114 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %114, i64 %117
  %119 = bitcast %struct.kvm_memory_slot* %113 to i8*
  %120 = bitcast %struct.kvm_memory_slot* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 24, i1 false)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %123 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %125, i64 %127
  %129 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  store i32 %121, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %80

135:                                              ; preds = %108, %97
  %136 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %137 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %158, %140
  %142 = load i32, i32* %8, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %146 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %148, i64 %151
  %153 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %147, %154
  br label %156

156:                                              ; preds = %144, %141
  %157 = phi i1 [ false, %141 ], [ %155, %144 ]
  br i1 %157, label %158, label %184

158:                                              ; preds = %156
  %159 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %159, i64 %161
  %163 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %163, i64 %166
  %168 = bitcast %struct.kvm_memory_slot* %162 to i8*
  %169 = bitcast %struct.kvm_memory_slot* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 24, i1 false)
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %172 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %174, i64 %176
  %178 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  store i32 %170, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %8, align 4
  br label %141

184:                                              ; preds = %156
  br label %193

185:                                              ; preds = %135
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %188 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %186, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @WARN_ON_ONCE(i32 %191)
  br label %193

193:                                              ; preds = %185, %184
  %194 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %194, i64 %196
  %198 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %199 = bitcast %struct.kvm_memory_slot* %197 to i8*
  %200 = bitcast %struct.kvm_memory_slot* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 24, i1 false)
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %203 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %205, i64 %207
  %209 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %204, i64 %211
  store i32 %201, i32* %212, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
