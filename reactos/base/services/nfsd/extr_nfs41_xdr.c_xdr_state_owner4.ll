; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_state_owner4.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_state_owner4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32 }

@XDR_ENCODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i64 0, align 8
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @xdr_state_owner4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_state_owner4(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XDR_ENCODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = call i32 @xdr_u_hyper(%struct.TYPE_8__* %17, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %16
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XDR_DECODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @xdr_u_hyper(%struct.TYPE_8__* %30, i32* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %44 = call i32 @xdr_bytes(%struct.TYPE_8__* %40, i8** %7, i32* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36, %33, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @xdr_u_hyper(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xdr_bytes(%struct.TYPE_8__*, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
