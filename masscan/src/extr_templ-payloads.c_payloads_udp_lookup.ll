; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_udp_lookup.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_udp_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PayloadsUDP = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @payloads_udp_lookup(%struct.PayloadsUDP* %0, i32 %1, i8** %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.PayloadsUDP*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.PayloadsUDP* %0, %struct.PayloadsUDP** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %18 = icmp eq %struct.PayloadsUDP* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %97

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 65535
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %93, %20
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %26 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %23
  %30 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %31 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %92

41:                                               ; preds = %29
  %42 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %43 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %11, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %53 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %63 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %73 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %14, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %9, align 8
  %83 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %84, i64 %86
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  store i32 1, i32* %8, align 4
  br label %97

92:                                               ; preds = %29
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %16, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %23

96:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %41, %19
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
