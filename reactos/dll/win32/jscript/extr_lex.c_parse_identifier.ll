; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_identifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64* }

@tIdentifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64**)* @parse_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_identifier(%struct.TYPE_4__* %0, i64** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64** %1, i64*** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i32 1
  store i64* %11, i64** %9, align 8
  store i64* %10, i64** %5, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ult i64* %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @is_identifier_char(i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %12
  %28 = phi i1 [ false, %12 ], [ %26, %20 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %31, align 8
  br label %12

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = ptrtoint i64* %37 to i64
  %40 = ptrtoint i64* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i64* @parser_alloc(%struct.TYPE_4__* %44, i32 %49)
  store i64* %50, i64** %6, align 8
  %51 = load i64**, i64*** %4, align 8
  store i64* %50, i64** %51, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i64* %52, i64* %53, i32 %57)
  %59 = load i64*, i64** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @tIdentifier, align 4
  ret i32 %63
}

declare dso_local i64 @is_identifier_char(i64) #1

declare dso_local i64* @parser_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
