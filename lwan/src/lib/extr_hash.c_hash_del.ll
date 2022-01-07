; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_del.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 (i8*)*, i32, i32, i32 (i8*)*, i32 (i8*)*, %struct.hash_bucket* }
%struct.hash_bucket = type { i32, i32, %struct.hash_entry* }
%struct.hash_entry = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@MIN_BUCKETS = common dso_local global i32 0, align 4
@STEPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_del(%struct.hash* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_bucket*, align 8
  %9 = alloca %struct.hash_entry*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.hash*, %struct.hash** %4, align 8
  %15 = getelementptr inbounds %struct.hash, %struct.hash* %14, i32 0, i32 0
  %16 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 %16(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.hash*, %struct.hash** %4, align 8
  %21 = getelementptr inbounds %struct.hash, %struct.hash* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.hash*, %struct.hash** %4, align 8
  %25 = getelementptr inbounds %struct.hash, %struct.hash* %24, i32 0, i32 5
  %26 = load %struct.hash_bucket*, %struct.hash_bucket** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %26, i64 %28
  store %struct.hash_bucket* %29, %struct.hash_bucket** %8, align 8
  %30 = load %struct.hash*, %struct.hash** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.hash_entry* @hash_find_entry(%struct.hash* %30, i8* %31, i32 %32)
  store %struct.hash_entry* %33, %struct.hash_entry** %9, align 8
  %34 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %35 = icmp eq %struct.hash_entry* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %2
  %40 = load %struct.hash*, %struct.hash** %4, align 8
  %41 = getelementptr inbounds %struct.hash, %struct.hash* %40, i32 0, i32 4
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 %42(i8* %46)
  %48 = load %struct.hash*, %struct.hash** %4, align 8
  %49 = getelementptr inbounds %struct.hash, %struct.hash* %48, i32 0, i32 3
  %50 = load i32 (i8*)*, i32 (i8*)** %49, align 8
  %51 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %52 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 %50(i8* %54)
  %56 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %57 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %78

60:                                               ; preds = %39
  %61 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %62 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %61, i32 0, i32 2
  %63 = load %struct.hash_entry*, %struct.hash_entry** %62, align 8
  %64 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %65 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %63, i64 %67
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 -1
  store %struct.hash_entry* %69, %struct.hash_entry** %10, align 8
  %70 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %71 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %72 = icmp ne %struct.hash_entry* %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %75 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %76 = call i32 @memcpy(%struct.hash_entry* %74, %struct.hash_entry* %75, i32 16)
  br label %77

77:                                               ; preds = %73, %60
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %80 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.hash*, %struct.hash** %4, align 8
  %84 = getelementptr inbounds %struct.hash, %struct.hash* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.hash*, %struct.hash** %4, align 8
  %88 = getelementptr inbounds %struct.hash, %struct.hash* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MIN_BUCKETS, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp ugt i32 %89, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %78
  %94 = load %struct.hash*, %struct.hash** %4, align 8
  %95 = getelementptr inbounds %struct.hash, %struct.hash* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hash*, %struct.hash** %4, align 8
  %98 = getelementptr inbounds %struct.hash, %struct.hash* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = udiv i32 %99, 2
  %101 = icmp ult i32 %96, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.hash*, %struct.hash** %4, align 8
  %104 = load %struct.hash*, %struct.hash** %4, align 8
  %105 = call i32 @hash_n_buckets(%struct.hash* %104)
  %106 = sdiv i32 %105, 2
  %107 = call i32 @rehash(%struct.hash* %103, i32 %106)
  br label %148

108:                                              ; preds = %93, %78
  %109 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %110 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @STEPS, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %11, align 4
  %114 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %115 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @STEPS, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  %121 = load i32, i32* %12, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %108
  %124 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %125 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %124, i32 0, i32 2
  %126 = load %struct.hash_entry*, %struct.hash_entry** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  %129 = load i32, i32* @STEPS, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 16
  %132 = trunc i64 %131 to i32
  %133 = call %struct.hash_entry* @reallocarray(%struct.hash_entry* %126, i32 %128, i32 %132)
  store %struct.hash_entry* %133, %struct.hash_entry** %13, align 8
  %134 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %135 = icmp ne %struct.hash_entry* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %123
  %137 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %138 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %139 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %138, i32 0, i32 2
  store %struct.hash_entry* %137, %struct.hash_entry** %139, align 8
  %140 = load i32, i32* %11, align 4
  %141 = add i32 %140, 1
  %142 = load i32, i32* @STEPS, align 4
  %143 = mul i32 %141, %142
  %144 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %145 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %123
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147, %102
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %36
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.hash_entry* @hash_find_entry(%struct.hash*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.hash_entry*, %struct.hash_entry*, i32) #1

declare dso_local i32 @rehash(%struct.hash*, i32) #1

declare dso_local i32 @hash_n_buckets(%struct.hash*) #1

declare dso_local %struct.hash_entry* @reallocarray(%struct.hash_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
