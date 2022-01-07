; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_MakeInetContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_MakeInetContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InetContext = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.InetContext* (i32)* @CRYPT_MakeInetContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.InetContext* @CRYPT_MakeInetContext(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.InetContext*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.InetContext* @CryptMemAlloc(i32 12)
  store %struct.InetContext* %4, %struct.InetContext** %3, align 8
  %5 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %6 = icmp ne %struct.InetContext* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @CreateEventW(i32* null, i32 %8, i32 %9, i32* null)
  %11 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %12 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %14 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %19 = call i32 @CryptMemFree(%struct.InetContext* %18)
  store %struct.InetContext* null, %struct.InetContext** %3, align 8
  br label %27

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %23 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ERROR_SUCCESS, align 4
  %25 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  %26 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.InetContext*, %struct.InetContext** %3, align 8
  ret %struct.InetContext* %29
}

declare dso_local %struct.InetContext* @CryptMemAlloc(i32) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @CryptMemFree(%struct.InetContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
