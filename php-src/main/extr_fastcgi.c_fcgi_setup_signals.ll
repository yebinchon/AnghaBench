; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_setup_signals.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i64, i32 }

@fcgi_signal_handler = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fcgi_setup_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcgi_setup_signals() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca %struct.sigaction, align 8
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %4 = call i32 @sigemptyset(i32* %3)
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @fcgi_signal_handler, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* @SIGUSR1, align 4
  %9 = call i32 @sigaction(i32 %8, %struct.sigaction* %1, %struct.sigaction* null)
  %10 = load i32, i32* @SIGTERM, align 4
  %11 = call i32 @sigaction(i32 %10, %struct.sigaction* %1, %struct.sigaction* null)
  %12 = load i32, i32* @SIGPIPE, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* null, %struct.sigaction* %2)
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SIG_DFL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @SIGPIPE, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %1, %struct.sigaction* null)
  br label %21

21:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
