; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c_endrpcent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c_endrpcent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcdata = type { i32*, i32, i64, i32* }

@__yp_nomap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @endrpcent() #0 {
  %1 = alloca %struct.rpcdata*, align 8
  %2 = call %struct.rpcdata* (...) @_rpcdata()
  store %struct.rpcdata* %2, %struct.rpcdata** %1, align 8
  %3 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %4 = icmp eq %struct.rpcdata* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %8 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %13 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %18 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @fclose(i32* %19)
  %21 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %22 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %5, %16, %11, %6
  ret void
}

declare dso_local %struct.rpcdata* @_rpcdata(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
