; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strstrip.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strstrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64* } @mg_strstrip(i64 %0, i64* %1) #0 {
  %3 = alloca %struct.mg_str, align 8
  %4 = alloca %struct.mg_str, align 8
  %5 = bitcast %struct.mg_str* %4 to { i64, i64* }*
  %6 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 1
  store i64* %1, i64** %7, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i64 @isspace(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i1 [ false, %8 ], [ %18, %12 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %22, align 8
  %25 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  br label %8

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %46, %28
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = getelementptr inbounds i64, i64* %38, i64 -1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @isspace(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %33, %29
  %45 = phi i1 [ false, %29 ], [ %43, %33 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %29

50:                                               ; preds = %44
  %51 = bitcast %struct.mg_str* %3 to i8*
  %52 = bitcast %struct.mg_str* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = bitcast %struct.mg_str* %3 to { i64, i64* }*
  %54 = load { i64, i64* }, { i64, i64* }* %53, align 8
  ret { i64, i64* } %54
}

declare dso_local i64 @isspace(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
