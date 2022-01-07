; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_network_abbrev_convert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_network_abbrev_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@PGSQL_AF_INET = common dso_local global i64 0, align 8
@PGSQL_AF_INET6 = common dso_local global i64 0, align 8
@SIZEOF_DATUM = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@ABBREV_BITS_INET4_NETMASK_SIZE = common dso_local global i32 0, align 4
@ABBREV_BITS_INET4_SUBNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @network_abbrev_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_abbrev_convert(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @DatumGetInetPP(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @ip_family(i32* %19)
  %21 = load i64, i64* @PGSQL_AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ip_family(i32* %24)
  %26 = load i64, i64* @PGSQL_AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ true, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @ip_family(i32* %32)
  %34 = load i64, i64* @PGSQL_AF_INET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ip_addr(i32* %37)
  %39 = call i32 @memcpy(i32* %12, i32 %38, i32 4)
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @pg_bswap32(i32 %40)
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %53

42:                                               ; preds = %28
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ip_addr(i32* %43)
  %45 = call i32 @memcpy(i32* %8, i32 %44, i32 4)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DatumBigEndianToNative(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @SIZEOF_DATUM, align 4
  %49 = load i32, i32* @BITS_PER_BYTE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = shl i32 1, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %42, %36
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @ip_maxbits(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ip_bits(i32* %56)
  %58 = sub nsw i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load i32, i32* @SIZEOF_DATUM, align 4
  %64 = load i32, i32* @BITS_PER_BYTE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = srem i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @ip_bits(i32* %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %90

72:                                               ; preds = %53
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @ip_bits(i32* %73)
  %75 = load i32, i32* @SIZEOF_DATUM, align 4
  %76 = load i32, i32* @BITS_PER_BYTE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 1, %80
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %86, i32* %10, align 4
  br label %89

87:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i32, i32* %10, align 4
  %92 = ashr i32 %91, 1
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %90
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %13, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @hash_uint32(i32 %107)
  %109 = call i32 @DatumGetUInt32(i32 %108)
  %110 = call i32 @addHyperLogLog(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %103, %90
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32* @DatumGetInetPP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ip_family(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ip_addr(i32*) #1

declare dso_local i32 @pg_bswap32(i32) #1

declare dso_local i32 @DatumBigEndianToNative(i32) #1

declare dso_local i32 @ip_maxbits(i32*) #1

declare dso_local i32 @ip_bits(i32*) #1

declare dso_local i32 @addHyperLogLog(i32*, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
