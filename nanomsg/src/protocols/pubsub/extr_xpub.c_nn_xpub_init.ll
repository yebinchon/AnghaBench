; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/pubsub/extr_xpub.c_nn_xpub_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/pubsub/extr_xpub.c_nn_xpub_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_xpub = type { i32, i32 }
%struct.nn_sockbase_vfptr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_xpub*, %struct.nn_sockbase_vfptr*, i8*)* @nn_xpub_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpub_init(%struct.nn_xpub* %0, %struct.nn_sockbase_vfptr* %1, i8* %2) #0 {
  %4 = alloca %struct.nn_xpub*, align 8
  %5 = alloca %struct.nn_sockbase_vfptr*, align 8
  %6 = alloca i8*, align 8
  store %struct.nn_xpub* %0, %struct.nn_xpub** %4, align 8
  store %struct.nn_sockbase_vfptr* %1, %struct.nn_sockbase_vfptr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.nn_xpub*, %struct.nn_xpub** %4, align 8
  %8 = getelementptr inbounds %struct.nn_xpub, %struct.nn_xpub* %7, i32 0, i32 1
  %9 = load %struct.nn_sockbase_vfptr*, %struct.nn_sockbase_vfptr** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @nn_sockbase_init(i32* %8, %struct.nn_sockbase_vfptr* %9, i8* %10)
  %12 = load %struct.nn_xpub*, %struct.nn_xpub** %4, align 8
  %13 = getelementptr inbounds %struct.nn_xpub, %struct.nn_xpub* %12, i32 0, i32 0
  %14 = call i32 @nn_dist_init(i32* %13)
  ret void
}

declare dso_local i32 @nn_sockbase_init(i32*, %struct.nn_sockbase_vfptr*, i8*) #1

declare dso_local i32 @nn_dist_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
