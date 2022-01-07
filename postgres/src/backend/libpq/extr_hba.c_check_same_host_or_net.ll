; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_same_host_or_net.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_same_host_or_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@errno = common dso_local global i64 0, align 8
@check_network_callback = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error enumerating network interfaces: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_same_host_or_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_same_host_or_net(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %11, align 8
  store i64 0, i64* @errno, align 8
  %12 = load i32, i32* @check_network_callback, align 4
  %13 = call i64 @pg_foreach_ifaddr(i32 %12, %struct.TYPE_3__* %6)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @LOG, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @pg_foreach_ifaddr(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
