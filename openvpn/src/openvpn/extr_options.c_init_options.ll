; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_init_options.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_init_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MODE_POINT_TO_POINT = common dso_local global i32 0, align 4
@TOP_NET30 = common dso_local global i32 0, align 4
@PROTO_UDP = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@OPENVPN_PORT = common dso_local global i32 0, align 4
@TUN_MTU_DEFAULT = common dso_local global i32 0, align 4
@LINK_MTU_DEFAULT = common dso_local global i32 0, align 4
@MSSFIX_DEFAULT = common dso_local global i32 0, align 4
@RESOLV_RETRY_INFINITE = common dso_local global i32 0, align 4
@VLAN_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BF-CBC\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"AES-256-GCM:AES-128-GCM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@DEFAULT_SEQ_BACKTRACK = common dso_local global i32 0, align 4
@DEFAULT_TIME_BACKTRACK = common dso_local global i32 0, align 4
@KEY_DIRECTION_BIDIRECTIONAL = common dso_local global i32 0, align 4
@IPW32_SET_ADAPTIVE = common dso_local global i32 0, align 4
@IPW32_SET_DHCP_MASQ = common dso_local global i32 0, align 4
@ROUTE_METHOD_ADAPTIVE = common dso_local global i32 0, align 4
@X509_USERNAME_FIELD_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_options(%struct.options* %0, i32 %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.options*, %struct.options** %3, align 8
  %6 = call i32 @CLEAR(%struct.options* byval(%struct.options) align 8 %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.options*, %struct.options** %3, align 8
  %11 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 57
  %12 = call i32 @gc_init(i32* %11)
  %13 = load %struct.options*, %struct.options** %3, align 8
  %14 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @MODE_POINT_TO_POINT, align 4
  %17 = load %struct.options*, %struct.options** %3, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 56
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @TOP_NET30, align 4
  %20 = load %struct.options*, %struct.options** %3, align 8
  %21 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 55
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @PROTO_UDP, align 4
  %23 = load %struct.options*, %struct.options** %3, align 8
  %24 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 53
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 12
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @AF_UNSPEC, align 4
  %27 = load %struct.options*, %struct.options** %3, align 8
  %28 = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 53
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 4
  %30 = load %struct.options*, %struct.options** %3, align 8
  %31 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 53
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.options*, %struct.options** %3, align 8
  %34 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 53
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 5, i32* %35, align 4
  %36 = load %struct.options*, %struct.options** %3, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 53
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 300, i32* %38, align 4
  %39 = load %struct.options*, %struct.options** %3, align 8
  %40 = getelementptr inbounds %struct.options, %struct.options* %39, i32 0, i32 53
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 120, i32* %41, align 4
  %42 = load %struct.options*, %struct.options** %3, align 8
  %43 = getelementptr inbounds %struct.options, %struct.options* %42, i32 0, i32 54
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @OPENVPN_PORT, align 4
  %45 = load %struct.options*, %struct.options** %3, align 8
  %46 = getelementptr inbounds %struct.options, %struct.options* %45, i32 0, i32 53
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  store i32 %44, i32* %47, align 4
  %48 = load %struct.options*, %struct.options** %3, align 8
  %49 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 53
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 10
  store i32 %44, i32* %50, align 4
  %51 = load %struct.options*, %struct.options** %3, align 8
  %52 = getelementptr inbounds %struct.options, %struct.options* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.options*, %struct.options** %3, align 8
  %54 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 2
  store i32 60, i32* %54, align 8
  %55 = load %struct.options*, %struct.options** %3, align 8
  %56 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load %struct.options*, %struct.options** %3, align 8
  %58 = getelementptr inbounds %struct.options, %struct.options* %57, i32 0, i32 53
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @TUN_MTU_DEFAULT, align 4
  %61 = load %struct.options*, %struct.options** %3, align 8
  %62 = getelementptr inbounds %struct.options, %struct.options* %61, i32 0, i32 53
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 8
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @LINK_MTU_DEFAULT, align 4
  %65 = load %struct.options*, %struct.options** %3, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 53
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  store i32 %64, i32* %67, align 4
  %68 = load %struct.options*, %struct.options** %3, align 8
  %69 = getelementptr inbounds %struct.options, %struct.options* %68, i32 0, i32 53
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 -1, i32* %70, align 4
  %71 = load i32, i32* @MSSFIX_DEFAULT, align 4
  %72 = load %struct.options*, %struct.options** %3, align 8
  %73 = getelementptr inbounds %struct.options, %struct.options* %72, i32 0, i32 53
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 4
  %75 = load %struct.options*, %struct.options** %3, align 8
  %76 = getelementptr inbounds %struct.options, %struct.options* %75, i32 0, i32 4
  store i32 30, i32* %76, align 8
  %77 = load i32, i32* @RESOLV_RETRY_INFINITE, align 4
  %78 = load %struct.options*, %struct.options** %3, align 8
  %79 = getelementptr inbounds %struct.options, %struct.options* %78, i32 0, i32 52
  store i32 %77, i32* %79, align 8
  %80 = load %struct.options*, %struct.options** %3, align 8
  %81 = getelementptr inbounds %struct.options, %struct.options* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = load %struct.options*, %struct.options** %3, align 8
  %83 = getelementptr inbounds %struct.options, %struct.options* %82, i32 0, i32 6
  store i32 -1, i32* %83, align 8
  %84 = load i32, i32* @VLAN_ALL, align 4
  %85 = load %struct.options*, %struct.options** %3, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 49
  store i32 %84, i32* %86, align 8
  %87 = load %struct.options*, %struct.options** %3, align 8
  %88 = getelementptr inbounds %struct.options, %struct.options* %87, i32 0, i32 14
  store i32 1, i32* %88, align 8
  %89 = load %struct.options*, %struct.options** %3, align 8
  %90 = getelementptr inbounds %struct.options, %struct.options* %89, i32 0, i32 23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.options*, %struct.options** %3, align 8
  %92 = getelementptr inbounds %struct.options, %struct.options* %91, i32 0, i32 24
  store i32 0, i32* %92, align 8
  %93 = load %struct.options*, %struct.options** %3, align 8
  %94 = getelementptr inbounds %struct.options, %struct.options* %93, i32 0, i32 25
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.options*, %struct.options** %3, align 8
  %96 = getelementptr inbounds %struct.options, %struct.options* %95, i32 0, i32 26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %96, align 8
  %97 = load %struct.options*, %struct.options** %3, align 8
  %98 = getelementptr inbounds %struct.options, %struct.options* %97, i32 0, i32 27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.options*, %struct.options** %3, align 8
  %100 = getelementptr inbounds %struct.options, %struct.options* %99, i32 0, i32 28
  store i32 16, i32* %100, align 8
  %101 = load %struct.options*, %struct.options** %3, align 8
  %102 = getelementptr inbounds %struct.options, %struct.options* %101, i32 0, i32 29
  store i32 1, i32* %102, align 4
  %103 = load i32, i32* @DEFAULT_SEQ_BACKTRACK, align 4
  %104 = load %struct.options*, %struct.options** %3, align 8
  %105 = getelementptr inbounds %struct.options, %struct.options* %104, i32 0, i32 47
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @DEFAULT_TIME_BACKTRACK, align 4
  %107 = load %struct.options*, %struct.options** %3, align 8
  %108 = getelementptr inbounds %struct.options, %struct.options* %107, i32 0, i32 46
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @KEY_DIRECTION_BIDIRECTIONAL, align 4
  %110 = load %struct.options*, %struct.options** %3, align 8
  %111 = getelementptr inbounds %struct.options, %struct.options* %110, i32 0, i32 45
  store i32 %109, i32* %111, align 8
  %112 = load %struct.options*, %struct.options** %3, align 8
  %113 = getelementptr inbounds %struct.options, %struct.options* %112, i32 0, i32 31
  store i32 2, i32* %113, align 4
  %114 = load %struct.options*, %struct.options** %3, align 8
  %115 = getelementptr inbounds %struct.options, %struct.options* %114, i32 0, i32 32
  store i32 2, i32* %115, align 8
  %116 = load %struct.options*, %struct.options** %3, align 8
  %117 = getelementptr inbounds %struct.options, %struct.options* %116, i32 0, i32 33
  store i32 -1, i32* %117, align 4
  %118 = load %struct.options*, %struct.options** %3, align 8
  %119 = getelementptr inbounds %struct.options, %struct.options* %118, i32 0, i32 34
  store i32 3600, i32* %119, align 8
  %120 = load %struct.options*, %struct.options** %3, align 8
  %121 = getelementptr inbounds %struct.options, %struct.options* %120, i32 0, i32 35
  store i32 -1, i32* %121, align 4
  %122 = load %struct.options*, %struct.options** %3, align 8
  %123 = getelementptr inbounds %struct.options, %struct.options* %122, i32 0, i32 36
  store i32 60, i32* %123, align 8
  %124 = load %struct.options*, %struct.options** %3, align 8
  %125 = getelementptr inbounds %struct.options, %struct.options* %124, i32 0, i32 37
  store i32 3600, i32* %125, align 4
  %126 = load %struct.options*, %struct.options** %3, align 8
  %127 = getelementptr inbounds %struct.options, %struct.options* %126, i32 0, i32 44
  store i32* null, i32** %127, align 8
  %128 = load %struct.options*, %struct.options** %3, align 8
  %129 = getelementptr inbounds %struct.options, %struct.options* %128, i32 0, i32 43
  store i32* null, i32** %129, align 8
  %130 = load %struct.options*, %struct.options** %3, align 8
  %131 = getelementptr inbounds %struct.options, %struct.options* %130, i32 0, i32 41
  store i32 0, i32* %131, align 8
  ret void
}

declare dso_local i32 @CLEAR(%struct.options* byval(%struct.options) align 8) #1

declare dso_local i32 @gc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
