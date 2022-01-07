; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_rehash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i64, i32, %struct.hash_entry* }
%struct.hash_entry = type { i32, %struct.hash_entry*, i32, i32, i32 }
%struct.hash_bucket = type { i32, %struct.hash_bucket*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash*, i32)* @rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(%struct.hash* %0, i32 %1) #0 {
  %3 = alloca %struct.hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_bucket*, align 8
  %6 = alloca %struct.hash_bucket*, align 8
  %7 = alloca %struct.hash_bucket*, align 8
  %8 = alloca %struct.hash, align 8
  %9 = alloca %struct.hash_entry*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.hash_entry* @calloc(i32 %12, i32 32)
  %14 = bitcast %struct.hash_entry* %13 to %struct.hash_bucket*
  store %struct.hash_bucket* %14, %struct.hash_bucket** %5, align 8
  %15 = load %struct.hash*, %struct.hash** %3, align 8
  %16 = getelementptr inbounds %struct.hash, %struct.hash* %15, i32 0, i32 2
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  %18 = load %struct.hash*, %struct.hash** %3, align 8
  %19 = call i32 @hash_n_buckets(%struct.hash* %18)
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %20
  %22 = bitcast %struct.hash_entry* %21 to %struct.hash_bucket*
  store %struct.hash_bucket* %22, %struct.hash_bucket** %6, align 8
  %23 = load %struct.hash*, %struct.hash** %3, align 8
  %24 = bitcast %struct.hash* %8 to i8*
  %25 = bitcast %struct.hash* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.hash*, %struct.hash** %3, align 8
  %34 = call i32 @hash_n_buckets(%struct.hash* %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.hash_bucket*, %struct.hash_bucket** %5, align 8
  %40 = icmp eq %struct.hash_bucket* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %168

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sub i32 %44, 1
  %46 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.hash_bucket*, %struct.hash_bucket** %5, align 8
  %48 = bitcast %struct.hash_bucket* %47 to %struct.hash_entry*
  %49 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 2
  store %struct.hash_entry* %48, %struct.hash_entry** %49, align 8
  %50 = load %struct.hash*, %struct.hash** %3, align 8
  %51 = getelementptr inbounds %struct.hash, %struct.hash* %50, i32 0, i32 2
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8
  %53 = bitcast %struct.hash_entry* %52 to %struct.hash_bucket*
  store %struct.hash_bucket* %53, %struct.hash_bucket** %7, align 8
  br label %54

54:                                               ; preds = %103, %42
  %55 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %56 = load %struct.hash_bucket*, %struct.hash_bucket** %6, align 8
  %57 = icmp ult %struct.hash_bucket* %55, %56
  br i1 %57, label %58, label %106

58:                                               ; preds = %54
  %59 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %60 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %59, i32 0, i32 1
  %61 = load %struct.hash_bucket*, %struct.hash_bucket** %60, align 8
  %62 = bitcast %struct.hash_bucket* %61 to %struct.hash_entry*
  store %struct.hash_entry* %62, %struct.hash_entry** %9, align 8
  %63 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %64 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %65 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %63, i64 %67
  store %struct.hash_entry* %68, %struct.hash_entry** %10, align 8
  br label %69

69:                                               ; preds = %99, %58
  %70 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %71 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %72 = icmp ult %struct.hash_entry* %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %75 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.hash_entry* @hash_add_entry_hashed(%struct.hash* %8, i32 %76, i32 %79)
  store %struct.hash_entry* %80, %struct.hash_entry** %11, align 8
  %81 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %82 = icmp ne %struct.hash_entry* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @UNLIKELY(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %145

88:                                               ; preds = %73
  %89 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %90 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %93 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %88
  %100 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i32 1
  store %struct.hash_entry* %101, %struct.hash_entry** %9, align 8
  br label %69

102:                                              ; preds = %69
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %105 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %104, i32 1
  store %struct.hash_bucket* %105, %struct.hash_bucket** %7, align 8
  br label %54

106:                                              ; preds = %54
  %107 = load %struct.hash*, %struct.hash** %3, align 8
  %108 = getelementptr inbounds %struct.hash, %struct.hash* %107, i32 0, i32 2
  %109 = load %struct.hash_entry*, %struct.hash_entry** %108, align 8
  %110 = bitcast %struct.hash_entry* %109 to %struct.hash_bucket*
  store %struct.hash_bucket* %110, %struct.hash_bucket** %7, align 8
  br label %111

111:                                              ; preds = %121, %106
  %112 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %113 = load %struct.hash_bucket*, %struct.hash_bucket** %6, align 8
  %114 = icmp ult %struct.hash_bucket* %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %117 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %116, i32 0, i32 1
  %118 = load %struct.hash_bucket*, %struct.hash_bucket** %117, align 8
  %119 = bitcast %struct.hash_bucket* %118 to %struct.hash_entry*
  %120 = call i32 @free(%struct.hash_entry* %119)
  br label %121

121:                                              ; preds = %115
  %122 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %123 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %122, i32 1
  store %struct.hash_bucket* %123, %struct.hash_bucket** %7, align 8
  br label %111

124:                                              ; preds = %111
  %125 = load %struct.hash*, %struct.hash** %3, align 8
  %126 = getelementptr inbounds %struct.hash, %struct.hash* %125, i32 0, i32 2
  %127 = load %struct.hash_entry*, %struct.hash_entry** %126, align 8
  %128 = call i32 @free(%struct.hash_entry* %127)
  %129 = load %struct.hash_bucket*, %struct.hash_bucket** %5, align 8
  %130 = bitcast %struct.hash_bucket* %129 to %struct.hash_entry*
  %131 = load %struct.hash*, %struct.hash** %3, align 8
  %132 = getelementptr inbounds %struct.hash, %struct.hash* %131, i32 0, i32 2
  store %struct.hash_entry* %130, %struct.hash_entry** %132, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sub i32 %133, 1
  %135 = load %struct.hash*, %struct.hash** %3, align 8
  %136 = getelementptr inbounds %struct.hash, %struct.hash* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.hash*, %struct.hash** %3, align 8
  %140 = getelementptr inbounds %struct.hash, %struct.hash* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  br label %168

145:                                              ; preds = %87
  %146 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  store %struct.hash_bucket* %146, %struct.hash_bucket** %6, align 8
  %147 = load %struct.hash*, %struct.hash** %3, align 8
  %148 = getelementptr inbounds %struct.hash, %struct.hash* %147, i32 0, i32 2
  %149 = load %struct.hash_entry*, %struct.hash_entry** %148, align 8
  %150 = bitcast %struct.hash_entry* %149 to %struct.hash_bucket*
  store %struct.hash_bucket* %150, %struct.hash_bucket** %7, align 8
  br label %151

151:                                              ; preds = %161, %145
  %152 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %153 = load %struct.hash_bucket*, %struct.hash_bucket** %6, align 8
  %154 = icmp ult %struct.hash_bucket* %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %157 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %156, i32 0, i32 1
  %158 = load %struct.hash_bucket*, %struct.hash_bucket** %157, align 8
  %159 = bitcast %struct.hash_bucket* %158 to %struct.hash_entry*
  %160 = call i32 @free(%struct.hash_entry* %159)
  br label %161

161:                                              ; preds = %155
  %162 = load %struct.hash_bucket*, %struct.hash_bucket** %7, align 8
  %163 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %162, i32 1
  store %struct.hash_bucket* %163, %struct.hash_bucket** %7, align 8
  br label %151

164:                                              ; preds = %151
  %165 = load %struct.hash_bucket*, %struct.hash_bucket** %5, align 8
  %166 = bitcast %struct.hash_bucket* %165 to %struct.hash_entry*
  %167 = call i32 @free(%struct.hash_entry* %166)
  br label %168

168:                                              ; preds = %164, %124, %41
  ret void
}

declare dso_local %struct.hash_entry* @calloc(i32, i32) #1

declare dso_local i32 @hash_n_buckets(%struct.hash*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.hash_entry* @hash_add_entry_hashed(%struct.hash*, i32, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @free(%struct.hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
