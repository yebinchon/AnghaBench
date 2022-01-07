; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_strip_linebreaks.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_strip_linebreaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bstr_strip_linebreaks(i64 %0) #0 {
  %2 = alloca %struct.bstr, align 8
  %3 = alloca %struct.bstr, align 8
  %4 = alloca %struct.bstr, align 8
  %5 = alloca %struct.bstr, align 8
  %6 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @bstr_endswith0(i64 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 2
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @bstr_splice(i64 %16, i32 0, i64 %14)
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = bitcast %struct.bstr* %3 to i8*
  %20 = bitcast %struct.bstr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  br label %37

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @bstr_endswith0(i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @bstr_splice(i64 %31, i32 0, i64 %29)
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = bitcast %struct.bstr* %3 to i8*
  %35 = bitcast %struct.bstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  br label %36

36:                                               ; preds = %26, %21
  br label %37

37:                                               ; preds = %36, %11
  %38 = bitcast %struct.bstr* %2 to i8*
  %39 = bitcast %struct.bstr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.bstr, %struct.bstr* %2, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  ret i64 %41
}

declare dso_local i64 @bstr_endswith0(i64, i8*) #1

declare dso_local i64 @bstr_splice(i64, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
