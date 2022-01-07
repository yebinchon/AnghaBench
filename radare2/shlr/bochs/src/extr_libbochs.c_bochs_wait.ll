; ModuleID = '/home/carl/AnghaBench/radare2/shlr/bochs/src/extr_libbochs.c_bochs_wait.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/bochs/src/extr_libbochs.c_bochs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@lpTmpBuffer = common dso_local global i64* null, align 8
@SIZE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"<bochs:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bochs_wait(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @bochs_reset_buffer(%struct.TYPE_4__* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @F_GETFL, align 4
  %11 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %73, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64*, i64** @lpTmpBuffer, align 8
  %24 = load i32, i32* @SIZE_BUF, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @read(i32 %22, i64* %23, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %19
  %30 = load i64*, i64** @lpTmpBuffer, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = load i32, i32* @SIZE_BUF, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = call i32 @bochs_reset_buffer(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %44, %29
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i64*, i64** @lpTmpBuffer, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @memcpy(i32* %54, i64* %55, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i64 @strstr(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %74

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %19
  br label %19

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @O_NONBLOCK, align 4
  %80 = xor i32 %79, -1
  %81 = or i32 %78, %80
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 %81)
  ret i32 1
}

declare dso_local i32 @bochs_reset_buffer(%struct.TYPE_4__*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @strstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
