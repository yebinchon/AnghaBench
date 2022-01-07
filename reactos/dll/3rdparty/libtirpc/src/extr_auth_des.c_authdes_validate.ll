; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.opaque_auth = type { i32, i64 }
%struct.ad_private = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.authdes_verf = type { i32, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4
@DES_HW = common dso_local global i32 0, align 4
@ADN_NICKNAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.opaque_auth*)* @authdes_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authdes_validate(%struct.TYPE_12__* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.opaque_auth*, align 8
  %6 = alloca %struct.ad_private*, align 8
  %7 = alloca %struct.authdes_verf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_12__* %11)
  store %struct.ad_private* %12, %struct.ad_private** %6, align 8
  %13 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %14 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %17 = mul nsw i32 3, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %23 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %9, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %9, align 8
  %28 = load i8*, i8** %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %9, align 8
  %33 = load i8*, i8** %31, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %9, align 8
  %38 = load i8*, i8** %36, align 8
  %39 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = bitcast %struct.TYPE_11__* %10 to i8*
  %44 = load i32, i32* @DES_DECRYPT, align 4
  %45 = load i32, i32* @DES_HW, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ecb_crypt(i8* %42, i8* %43, i32 24, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @DES_FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %21
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %9, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = call i8* @IXDR_GET_INT32(i8** %57)
  %59 = getelementptr i8, i8* %58, i64 1
  %60 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = call i8* @IXDR_GET_INT32(i8** %62)
  %64 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %67 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %66, i32 0, i32 2
  %68 = bitcast i32* %67 to i8*
  %69 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %70 = bitcast %struct.TYPE_9__* %69 to i8*
  %71 = call i64 @bcmp(i8* %68, i8* %70, i32 4)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %85

75:                                               ; preds = %53
  %76 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %79 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @ADN_NICKNAME, align 4
  %81 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %82 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %73, %51, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_12__*) #1

declare dso_local i32 @ecb_crypt(i8*, i8*, i32, i32) #1

declare dso_local i64 @DES_FAILED(i32) #1

declare dso_local i8* @IXDR_GET_INT32(i8**) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
