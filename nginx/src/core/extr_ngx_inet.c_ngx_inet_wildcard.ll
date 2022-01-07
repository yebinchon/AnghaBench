; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_wildcard.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_inet_wildcard(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %19 [
    i32 129, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %4, align 8
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INADDR_ANY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %20

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %1, %18
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
