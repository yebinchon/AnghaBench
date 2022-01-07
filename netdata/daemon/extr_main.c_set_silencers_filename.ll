; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_set_silencers_filename.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_set_silencers_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s/health.silencers.json\00", align 1
@netdata_configured_varlib_dir = common dso_local global i32 0, align 4
@CONFIG_SECTION_HEALTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"silencers file\00", align 1
@silencers_filename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_silencers_filename() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @FILENAME_MAX, align 4
  %4 = add nsw i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @FILENAME_MAX, align 4
  %9 = load i32, i32* @netdata_configured_varlib_dir, align 4
  %10 = call i32 @snprintfz(i8* %7, i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @CONFIG_SECTION_HEALTH, align 4
  %12 = call i32 @config_get(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  store i32 %12, i32* @silencers_filename, align 4
  %13 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %13)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #2

declare dso_local i32 @config_get(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
