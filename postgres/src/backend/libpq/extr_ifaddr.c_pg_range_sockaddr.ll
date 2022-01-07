; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_range_sockaddr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_range_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_range_sockaddr(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %17 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in*
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %19 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*
  %20 = call i32 @range_sockaddr_AF_INET(%struct.sockaddr_in* %15, %struct.sockaddr_in* %17, %struct.sockaddr_in* %19)
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @range_sockaddr_AF_INET(%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
