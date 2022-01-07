; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_bs1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_bs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i8*, %struct.TYPE_2__, i8*, i8*, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r_magic*)* @bs1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bs1(%struct.r_magic* %0) #0 {
  %2 = alloca %struct.r_magic*, align 8
  store %struct.r_magic* %0, %struct.r_magic** %2, align 8
  %3 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %4 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @swap2(i32 %5)
  %7 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %8 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 8
  %9 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %10 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %9, i32 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @swap4(i8* %11)
  %13 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %14 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  %15 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %16 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @swap4(i8* %17)
  %19 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %20 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %22 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %21, i32 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @swap4(i8* %23)
  %25 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %26 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %28 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @MAGIC_IS_STRING(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %34 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @swap4(i8* %35)
  %37 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %38 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %40 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @swap4(i8* %41)
  %43 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %44 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %60

45:                                               ; preds = %1
  %46 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %47 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @swap8(i8* %49)
  %51 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %52 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %55 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @swap8(i8* %56)
  %58 = load %struct.r_magic*, %struct.r_magic** %2, align 8
  %59 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %45, %32
  ret void
}

declare dso_local i32 @swap2(i32) #1

declare dso_local i8* @swap4(i8*) #1

declare dso_local i64 @MAGIC_IS_STRING(i32) #1

declare dso_local i8* @swap8(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
