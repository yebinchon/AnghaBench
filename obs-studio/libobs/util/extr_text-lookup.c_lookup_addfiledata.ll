; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_addfiledata.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_addfiledata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_lookup = type { i32 }
%struct.lexer = type { i32 }
%struct.strref = type { i8*, i32 }
%struct.text_leaf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.text_lookup*, i8*)* @lookup_addfiledata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_addfiledata(%struct.text_lookup* %0, i8* %1) #0 {
  %3 = alloca %struct.text_lookup*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lexer, align 4
  %6 = alloca %struct.strref, align 8
  %7 = alloca %struct.strref, align 8
  %8 = alloca %struct.text_leaf*, align 8
  %9 = alloca i32, align 4
  store %struct.text_lookup* %0, %struct.text_lookup** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i32 @lexer_init(%struct.lexer* %5)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @lexer_start(%struct.lexer* %5, i8* %11)
  %13 = call i32 @strref_clear(%struct.strref* %6)
  %14 = call i32 @strref_clear(%struct.strref* %7)
  br label %15

15:                                               ; preds = %75, %36, %24, %2
  %16 = call i64 @lookup_gettoken(%struct.lexer* %5, %struct.strref* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  %19 = getelementptr inbounds %struct.strref, %struct.strref* %6, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %15

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %46, %25
  %27 = call i64 @lookup_gettoken(%struct.lexer* %5, %struct.strref* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %76

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.strref, %struct.strref* %7, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %15

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.strref, %struct.strref* %7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %26

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47
  %49 = call %struct.text_leaf* @bmalloc(i32 8)
  store %struct.text_leaf* %49, %struct.text_leaf** %8, align 8
  %50 = getelementptr inbounds %struct.strref, %struct.strref* %6, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.strref, %struct.strref* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bstrdup_n(i8* %51, i32 %53)
  %55 = load %struct.text_leaf*, %struct.text_leaf** %8, align 8
  %56 = getelementptr inbounds %struct.text_leaf, %struct.text_leaf* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.strref, %struct.strref* %7, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.strref, %struct.strref* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @convert_string(i8* %58, i32 %60)
  %62 = load %struct.text_leaf*, %struct.text_leaf** %8, align 8
  %63 = getelementptr inbounds %struct.text_leaf, %struct.text_leaf* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.text_leaf*, %struct.text_leaf** %8, align 8
  %65 = getelementptr inbounds %struct.text_leaf, %struct.text_leaf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.text_leaf*, %struct.text_leaf** %8, align 8
  %68 = load %struct.text_lookup*, %struct.text_lookup** %3, align 8
  %69 = getelementptr inbounds %struct.text_lookup, %struct.text_lookup* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lookup_addstring(i32 %66, %struct.text_leaf* %67, i32 %70)
  %72 = call i32 @lookup_goto_nextline(%struct.lexer* %5)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %48
  br label %76

75:                                               ; preds = %48
  br label %15

76:                                               ; preds = %74, %29, %15
  %77 = call i32 @lexer_free(%struct.lexer* %5)
  ret void
}

declare dso_local i32 @lexer_init(%struct.lexer*) #1

declare dso_local i32 @lexer_start(%struct.lexer*, i8*) #1

declare dso_local i32 @strref_clear(%struct.strref*) #1

declare dso_local i64 @lookup_gettoken(%struct.lexer*, %struct.strref*) #1

declare dso_local %struct.text_leaf* @bmalloc(i32) #1

declare dso_local i32 @bstrdup_n(i8*, i32) #1

declare dso_local i32 @convert_string(i8*, i32) #1

declare dso_local i32 @lookup_addstring(i32, %struct.text_leaf*, i32) #1

declare dso_local i32 @lookup_goto_nextline(%struct.lexer*) #1

declare dso_local i32 @lexer_free(%struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
