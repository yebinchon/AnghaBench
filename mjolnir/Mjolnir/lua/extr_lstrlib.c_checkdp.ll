; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstrlib.c_checkdp.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstrlib.c_checkdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @checkdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkdp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @memchr(i8* %7, i8 signext 46, i32 %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = call signext i8 (...) @lua_getlocaledecpoint()
  store i8 %12, i8* %5, align 1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @memchr(i8* %13, i8 signext %14, i32 %15)
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** %6, align 8
  store i8 46, i8* %21, align 1
  br label %22

22:                                               ; preds = %20, %11
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local signext i8 @lua_getlocaledecpoint(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
