; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_lstrip.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_lstrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @bstr_lstrip(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.bstr, align 8
  %4 = alloca %struct.bstr, align 8
  %5 = bitcast %struct.bstr* %4 to { i64, i32* }*
  %6 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %5, i32 0, i32 1
  store i32* %1, i32** %7, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @mp_isspace(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i1 [ false, %8 ], [ %17, %12 ]
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %21, align 8
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %8

27:                                               ; preds = %18
  %28 = bitcast %struct.bstr* %3 to i8*
  %29 = bitcast %struct.bstr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = bitcast %struct.bstr* %3 to { i64, i32* }*
  %31 = load { i64, i32* }, { i64, i32* }* %30, align 8
  ret { i64, i32* } %31
}

declare dso_local i64 @mp_isspace(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
