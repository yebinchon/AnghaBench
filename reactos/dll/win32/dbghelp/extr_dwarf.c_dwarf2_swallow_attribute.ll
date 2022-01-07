; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_swallow_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_swallow_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"(attr:0x%lx,form:0x%lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unhandled attribute form %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @dwarf2_swallow_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_swallow_attribute(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %48 [
    i32 138, label %16
    i32 133, label %17
    i32 148, label %17
    i32 139, label %21
    i32 143, label %21
    i32 137, label %21
    i32 142, label %22
    i32 136, label %22
    i32 141, label %23
    i32 135, label %23
    i32 129, label %23
    i32 140, label %24
    i32 134, label %24
    i32 131, label %25
    i32 132, label %25
    i32 128, label %25
    i32 130, label %28
    i32 147, label %36
    i32 146, label %39
    i32 145, label %42
    i32 144, label %45
  ]

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %53

17:                                               ; preds = %2, %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %2, %2, %2
  store i32 1, i32* %5, align 4
  br label %53

22:                                               ; preds = %2, %2
  store i32 2, i32* %5, align 4
  br label %53

23:                                               ; preds = %2, %2, %2
  store i32 4, i32* %5, align 4
  br label %53

24:                                               ; preds = %2, %2
  store i32 8, i32* %5, align 4
  br label %53

25:                                               ; preds = %2, %2, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @dwarf2_leb128_length(%struct.TYPE_10__* %26)
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = call i32 @dwarf2_leb128_as_unsigned(%struct.TYPE_10__* %37)
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i32 @dwarf2_parse_byte(%struct.TYPE_10__* %40)
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @dwarf2_parse_u2(%struct.TYPE_10__* %43)
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call i32 @dwarf2_parse_u4(%struct.TYPE_10__* %46)
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %59

53:                                               ; preds = %45, %42, %39, %36, %28, %25, %24, %23, %22, %21, %17, %16
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_leb128_length(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dwarf2_leb128_as_unsigned(%struct.TYPE_10__*) #1

declare dso_local i32 @dwarf2_parse_byte(%struct.TYPE_10__*) #1

declare dso_local i32 @dwarf2_parse_u2(%struct.TYPE_10__*) #1

declare dso_local i32 @dwarf2_parse_u4(%struct.TYPE_10__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
