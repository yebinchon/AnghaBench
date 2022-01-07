; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrasimage.c_write_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrasimage.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Wanted to write, but something went wrong.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_file(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca i32*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  %4 = load %struct.file_info*, %struct.file_info** %2, align 8
  %5 = getelementptr inbounds %struct.file_info, %struct.file_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32* @fopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load %struct.file_info*, %struct.file_info** %2, align 8
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.file_info*, %struct.file_info** %2, align 8
  %12 = getelementptr inbounds %struct.file_info, %struct.file_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fwrite(i32 %10, i32 %13, i32 1, i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ferror(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fclose(i32* %24)
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
