; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_add_package_fns.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_add_package_fns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_entry = type { i8*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.fn_entry*)* @add_package_fns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_package_fns(i32* %0, i8* %1, %struct.fn_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fn_entry*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.fn_entry* %2, %struct.fn_entry** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @js_newobject(i32* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %77, %3
  %11 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %11, i64 %13
  %15 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %80

18:                                               ; preds = %10
  %19 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %28, i64 %30
  %32 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @js_newcfunction(i32* %27, i64 %33, i8* %39, i32 %45)
  br label %68

47:                                               ; preds = %18
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %61, i64 %63
  %65 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @af_newcfunction(i32* %48, i32 %54, i8* %60, i32 %66)
  br label %68

68:                                               ; preds = %47, %26
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.fn_entry*, %struct.fn_entry** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.fn_entry, %struct.fn_entry* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @js_setproperty(i32* %69, i32 -2, i8* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %10

80:                                               ; preds = %10
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @js_setproperty(i32* %81, i32 -2, i8* %82)
  ret void
}

declare dso_local i32 @js_newobject(i32*) #1

declare dso_local i32 @js_newcfunction(i32*, i64, i8*, i32) #1

declare dso_local i32 @af_newcfunction(i32*, i32, i8*, i32) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
