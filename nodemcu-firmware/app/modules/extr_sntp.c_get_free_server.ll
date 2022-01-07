; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_get_free_server.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_get_free_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server_count = common dso_local global i32 0, align 4
@serverp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_free_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_free_server() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @server_count, align 4
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = call i64 @malloc(i32 %6)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %1, align 8
  %9 = load i32, i32* @server_count, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load i32*, i32** %1, align 8
  %13 = load i32*, i32** @serverp, align 8
  %14 = load i32, i32* @server_count, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memcpy(i32* %12, i32* %13, i32 %17)
  br label %19

19:                                               ; preds = %11, %0
  %20 = load i32*, i32** @serverp, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** @serverp, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** %1, align 8
  store i32* %26, i32** @serverp, align 8
  %27 = load i32*, i32** @serverp, align 8
  %28 = load i32, i32* @server_count, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  ret i32* %30
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
