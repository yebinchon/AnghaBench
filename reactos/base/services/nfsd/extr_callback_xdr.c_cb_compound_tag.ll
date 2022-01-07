; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_tag.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_compound_tag = type { i64, i32 }

@CB_COMPOUND_MAX_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cb_compound_tag*)* @cb_compound_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_compound_tag(i32* %0, %struct.cb_compound_tag* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_compound_tag*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cb_compound_tag* %1, %struct.cb_compound_tag** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.cb_compound_tag*, %struct.cb_compound_tag** %4, align 8
  %7 = getelementptr inbounds %struct.cb_compound_tag, %struct.cb_compound_tag* %6, i32 0, i32 0
  %8 = call i64 @xdr_u_int32_t(i32* %5, i64* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.cb_compound_tag*, %struct.cb_compound_tag** %4, align 8
  %12 = getelementptr inbounds %struct.cb_compound_tag, %struct.cb_compound_tag* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CB_COMPOUND_MAX_TAG, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.cb_compound_tag*, %struct.cb_compound_tag** %4, align 8
  %19 = getelementptr inbounds %struct.cb_compound_tag, %struct.cb_compound_tag* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cb_compound_tag*, %struct.cb_compound_tag** %4, align 8
  %22 = getelementptr inbounds %struct.cb_compound_tag, %struct.cb_compound_tag* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @xdr_opaque(i32* %17, i32 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %16, %10, %2
  %27 = phi i1 [ false, %10 ], [ false, %2 ], [ %25, %16 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @xdr_u_int32_t(i32*, i64*) #1

declare dso_local i64 @xdr_opaque(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
