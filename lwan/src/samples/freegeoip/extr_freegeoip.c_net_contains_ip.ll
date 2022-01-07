; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_net_contains_ip.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_net_contains_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_net = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%union.ip_to_octet = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_net*, i32)* @net_contains_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_contains_ip(%struct.ip_net* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ip_to_octet, align 8
  store %struct.ip_net* %0, %struct.ip_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %union.ip_to_octet* %5 to i32*
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 8
  %8 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %9 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %15 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %13, %19
  %21 = bitcast %union.ip_to_octet* %5 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %26 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %24, %30
  %32 = icmp eq i32 %20, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %2
  %34 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %35 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %41 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %39, %45
  %47 = bitcast %union.ip_to_octet* %5 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %52 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %50, %56
  %58 = icmp eq i32 %46, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %33
  %60 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %61 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %67 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %65, %71
  %73 = bitcast %union.ip_to_octet* %5 to i32**
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %78 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %76, %82
  %84 = icmp eq i32 %72, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %59
  %86 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %87 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %93 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %91, %97
  %99 = bitcast %union.ip_to_octet* %5 to i32**
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ip_net*, %struct.ip_net** %3, align 8
  %104 = getelementptr inbounds %struct.ip_net, %struct.ip_net* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %102, %108
  %110 = icmp eq i32 %98, %109
  br label %111

111:                                              ; preds = %85, %59, %33, %2
  %112 = phi i1 [ false, %59 ], [ false, %33 ], [ false, %2 ], [ %110, %85 ]
  %113 = zext i1 %112 to i32
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
