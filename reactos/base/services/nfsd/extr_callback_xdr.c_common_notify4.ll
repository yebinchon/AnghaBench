; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_common_notify4.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_common_notify4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notify4 = type { i32, i32, i32 }

@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.notify4*)* @common_notify4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_notify4(i32* %0, %struct.notify4* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.notify4*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.notify4* %1, %struct.notify4** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.notify4*, %struct.notify4** %4, align 8
  %7 = getelementptr inbounds %struct.notify4, %struct.notify4* %6, i32 0, i32 2
  %8 = call i64 @xdr_bitmap4(i32* %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.notify4*, %struct.notify4** %4, align 8
  %13 = getelementptr inbounds %struct.notify4, %struct.notify4* %12, i32 0, i32 1
  %14 = load %struct.notify4*, %struct.notify4** %4, align 8
  %15 = getelementptr inbounds %struct.notify4, %struct.notify4* %14, i32 0, i32 0
  %16 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %17 = call i64 @xdr_bytes(i32* %11, i32* %13, i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %2
  %20 = phi i1 [ false, %2 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @xdr_bitmap4(i32*, i32*) #1

declare dso_local i64 @xdr_bytes(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
