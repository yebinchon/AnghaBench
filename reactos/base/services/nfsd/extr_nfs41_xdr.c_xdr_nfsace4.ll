; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_nfsace4.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_nfsace4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@XDR_FREE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @xdr_nfsace4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_nfsace4(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = call i32 @xdr_u_int32_t(%struct.TYPE_8__* %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = call i32 @xdr_u_int32_t(%struct.TYPE_8__* %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = call i32 @xdr_u_int32_t(%struct.TYPE_8__* %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XDR_FREE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %44 = call i32 @xdr_string(%struct.TYPE_8__* %42, i8** %6, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %39, %31, %23, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @xdr_u_int32_t(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xdr_string(%struct.TYPE_8__*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
