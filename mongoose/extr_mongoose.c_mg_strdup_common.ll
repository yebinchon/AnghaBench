; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strdup_common.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strdup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i8*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_str*, %struct.mg_str*, i32)* @mg_strdup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_strdup_common(%struct.mg_str* noalias sret %0, %struct.mg_str* byval(%struct.mg_str) align 8 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %2, i32* %4, align 4
  %6 = bitcast %struct.mg_str* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %16, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @MG_MALLOC(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i8* %29, i8* %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %0, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %0, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %14
  br label %50

50:                                               ; preds = %49, %10, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @MG_MALLOC(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
