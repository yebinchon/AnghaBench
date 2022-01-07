; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptp/extr_testptp.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptp/extr_testptp.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1056 x i8] c"usage: %s [options]\0A -c         query the ptp clock's capabilities\0A -d name    device to open\0A -e val     read 'val' external time stamp events\0A -f val     adjust the ptp clock frequency by 'val' ppb\0A -g         get the ptp clock time\0A -h         prints this message\0A -i val     index for event/trigger\0A -k val     measure the time offset between system and phc clock\0A            for 'val' times (Maximum 25)\0A -l         list the current pin configuration\0A -L pin,val configure pin index 'pin' with function 'val'\0A            the channel index is taken from the '-i' option\0A            'val' specifies the auxiliary function:\0A            0 - none\0A            1 - external time stamp\0A            2 - periodic output\0A -p val     enable output with a period of 'val' nanoseconds\0A -P val     enable or disable (val=1|0) the system clock PPS\0A -s         set the ptp clock time from the system time\0A -S         set the system time from the ptp clock time\0A -t val     shift the ptp clock time by 'val' seconds\0A -T val     set the ptp clock time to 'val' seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([1056 x i8], [1056 x i8]* @.str, i64 0, i64 0), i8* %4)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
