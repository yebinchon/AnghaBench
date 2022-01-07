; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_lladdr.c_set_lladdr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_lladdr.c_set_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.argv = type { i32 }

@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Sorry, but I don't know how to configure link layer addresses on this operating system.\00", align 1
@IFCONFIG_PATH = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@iproute_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_lladdr(i8* %0, i8* %1, %struct.env_set* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.env_set*, align 8
  %8 = alloca %struct.argv, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.env_set* %2, %struct.env_set** %7, align 8
  %10 = call i32 (...) @argv_new()
  %11 = getelementptr inbounds %struct.argv, %struct.argv* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @M_WARN, align 4
  %20 = call i32 (i32, i8*, ...) @msg(i32 %19, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
