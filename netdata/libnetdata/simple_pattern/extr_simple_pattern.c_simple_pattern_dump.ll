; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_dump.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"dump_pattern(NULL)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"dump_pattern(%p) child=%p next=%p mode=%d match=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simple_pattern_dump(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.simple_pattern*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.simple_pattern*
  store %struct.simple_pattern* %7, %struct.simple_pattern** %5, align 8
  %8 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %9 = icmp eq %struct.simple_pattern* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, ...) @debug(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %48

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %16 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %17 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %20 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %23 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %26 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @debug(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.simple_pattern* %15, i32* %18, i32* %21, i32 %24, i32 %27)
  %29 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %30 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %36 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  call void @simple_pattern_dump(i32 %34, i32* %37)
  br label %38

38:                                               ; preds = %33, %13
  %39 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %40 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %46 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  call void @simple_pattern_dump(i32 %44, i32* %47)
  br label %48

48:                                               ; preds = %10, %43, %38
  ret void
}

declare dso_local i32 @debug(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
