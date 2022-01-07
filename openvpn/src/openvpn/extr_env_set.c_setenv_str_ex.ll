; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_ex.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }

@M_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_str_ex(%struct.env_set* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8 signext %5, i32 %6, i32 %7, i8 signext %8) #0 {
  %10 = alloca %struct.env_set*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.gc_arena, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.env_set* %0, %struct.env_set** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8 %5, i8* %15, align 1
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8 %8, i8* %18, align 1
  %23 = call i32 (...) @gc_new()
  %24 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %19, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  store i8* null, i8** %21, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp sgt i32 %29, 1
  br label %31

31:                                               ; preds = %27, %9
  %32 = phi i1 [ false, %9 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.env_set*
  %36 = call i32 @ASSERT(%struct.env_set* %35)
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i8, i8* %15, align 1
  %41 = call i8* @string_mod_const(i8* %37, i32 %38, i32 %39, i8 signext %40, %struct.gc_arena* %19)
  store i8* %41, i8** %20, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i8, i8* %18, align 1
  %49 = call i8* @string_mod_const(i8* %45, i32 %46, i32 %47, i8 signext %48, %struct.gc_arena* %19)
  store i8* %49, i8** %21, align 8
  br label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.env_set*, %struct.env_set** %10, align 8
  %52 = call i32 @ASSERT(%struct.env_set* %51)
  %53 = load i8*, i8** %21, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i8*, i8** %20, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = call i8* @construct_name_value(i8* %56, i8* %57, %struct.gc_arena* %19)
  store i8* %58, i8** %22, align 8
  %59 = load %struct.env_set*, %struct.env_set** %10, align 8
  %60 = load i8*, i8** %22, align 8
  %61 = call i32 @env_set_add(%struct.env_set* %59, i8* %60)
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.env_set*, %struct.env_set** %10, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = call i32 @env_set_del(%struct.env_set* %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = call i32 @gc_free(%struct.gc_arena* %19)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @ASSERT(%struct.env_set*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @string_mod_const(i8*, i32, i32, i8 signext, %struct.gc_arena*) #1

declare dso_local i8* @construct_name_value(i8*, i8*, %struct.gc_arena*) #1

declare dso_local i32 @env_set_add(%struct.env_set*, i8*) #1

declare dso_local i32 @env_set_del(%struct.env_set*, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
