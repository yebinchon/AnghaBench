; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_pnfs_addr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_xdr_pnfs_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@XDR_ENCODE = common dso_local global i64 0, align 8
@NFS41_NETWORK_ID_LEN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i64 0, align 8
@NFS41_UNIVERSAL_ADDR_LEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @xdr_pnfs_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_pnfs_addr(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XDR_ENCODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i64 8, i64* %6, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i64, i64* @NFS41_NETWORK_ID_LEN, align 8
  %24 = call i32 @xdr_bytes(%struct.TYPE_7__* %22, i8** %7, i64* %6, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XDR_DECODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @NFS41_NETWORK_ID_LEN, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* @NFS41_NETWORK_ID_LEN, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XDR_ENCODE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i64 8, i64* %6, align 8
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i64, i64* @NFS41_UNIVERSAL_ADDR_LEN, align 8
  %61 = call i32 @xdr_bytes(%struct.TYPE_7__* %59, i8** %8, i64* %6, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %90

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XDR_DECODE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @NFS41_UNIVERSAL_ADDR_LEN, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 0, i8* %80, align 1
  br label %87

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* @NFS41_UNIVERSAL_ADDR_LEN, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %63, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @xdr_bytes(%struct.TYPE_7__*, i8**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
