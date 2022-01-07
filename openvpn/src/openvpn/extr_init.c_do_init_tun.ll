; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_tun.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_init_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_tun(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.context*, %struct.context** %2, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.context*, %struct.context** %2, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.context*, %struct.context** %2, align 8
  %41 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.context*, %struct.context** %2, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.context*, %struct.context** %2, align 8
  %53 = getelementptr inbounds %struct.context, %struct.context* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.context*, %struct.context** %2, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 3
  %58 = call %struct.TYPE_11__* @init_tun(i32 %6, i32 %10, i32 %14, i32 %18, i32 %22, i32 %26, i32 %30, i32 %34, i32 %39, i32 %44, i32 %51, i32 %55, i32* %57)
  %59 = load %struct.context*, %struct.context** %2, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.context*, %struct.context** %2, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load %struct.context*, %struct.context** %2, align 8
  %67 = getelementptr inbounds %struct.context, %struct.context* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.context*, %struct.context** %2, align 8
  %70 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = call i32 @init_tun_post(%struct.TYPE_11__* %65, i32* %68, i32* %71)
  %73 = load %struct.context*, %struct.context** %2, align 8
  %74 = getelementptr inbounds %struct.context, %struct.context* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  ret void
}

declare dso_local %struct.TYPE_11__* @init_tun(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @init_tun_post(%struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
