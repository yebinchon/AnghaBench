; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_create_matches_table.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_create_matches_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { %struct.SmackMatches* }
%struct.SmackMatches = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SMACK*, i32)* @create_matches_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_matches_table(%struct.SMACK* %0, i32 %1) #0 {
  %3 = alloca %struct.SMACK*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SmackMatches*, align 8
  store %struct.SMACK* %0, %struct.SMACK** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.SmackMatches*
  store %struct.SmackMatches* %11, %struct.SmackMatches** %5, align 8
  %12 = load %struct.SmackMatches*, %struct.SmackMatches** %5, align 8
  %13 = icmp eq %struct.SmackMatches* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %2
  %19 = load %struct.SmackMatches*, %struct.SmackMatches** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.SmackMatches* %19, i32 0, i32 %23)
  %25 = load %struct.SmackMatches*, %struct.SmackMatches** %5, align 8
  %26 = load %struct.SMACK*, %struct.SMACK** %3, align 8
  %27 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %26, i32 0, i32 0
  store %struct.SmackMatches* %25, %struct.SmackMatches** %27, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.SmackMatches*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
