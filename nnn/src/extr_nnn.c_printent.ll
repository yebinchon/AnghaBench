; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_printent.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_printent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@FILE_SELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry*, i32, i32)* @printent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printent(%struct.entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store %struct.entry* %0, %struct.entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %8, align 1
  %9 = load %struct.entry*, %struct.entry** %4, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @S_IFMT, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 132, label %22
    i32 130, label %23
    i32 128, label %24
    i32 131, label %25
    i32 134, label %26
    i32 133, label %26
  ]

14:                                               ; preds = %3
  %15 = load %struct.entry*, %struct.entry** %4, align 8
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8 42, i8* %8, align 1
  br label %21

21:                                               ; preds = %20, %14
  br label %28

22:                                               ; preds = %3
  store i8 47, i8* %8, align 1
  br label %28

23:                                               ; preds = %3
  store i8 64, i8* %8, align 1
  br label %28

24:                                               ; preds = %3
  store i8 61, i8* %8, align 1
  br label %28

25:                                               ; preds = %3
  store i8 124, i8* %8, align 1
  br label %28

26:                                               ; preds = %3, %3
  br label %28

27:                                               ; preds = %3
  store i8 63, i8* %8, align 1
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21
  %29 = load i8, i8* %8, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.entry*, %struct.entry** %4, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @unescape(i32 %37, i32 %38, i32** %7)
  %40 = load %struct.entry*, %struct.entry** %4, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @resetdircolor(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @A_REVERSE, align 4
  %48 = call i32 @attron(i32 %47)
  br label %49

49:                                               ; preds = %46, %34
  %50 = load %struct.entry*, %struct.entry** %4, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FILE_SELECTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 43, i32 32
  %58 = trunc i32 %57 to i8
  %59 = call i32 @addch(i8 signext %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @addwstr(i32* %60)
  %62 = load i8, i8* %8, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i8, i8* %8, align 1
  %66 = call i32 @addch(i8 signext %65)
  br label %67

67:                                               ; preds = %64, %49
  %68 = call i32 @addch(i8 signext 10)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @A_REVERSE, align 4
  %73 = call i32 @attroff(i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  ret void
}

declare dso_local i32 @unescape(i32, i32, i32**) #1

declare dso_local i32 @resetdircolor(i32) #1

declare dso_local i32 @attron(i32) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local i32 @addwstr(i32*) #1

declare dso_local i32 @attroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
