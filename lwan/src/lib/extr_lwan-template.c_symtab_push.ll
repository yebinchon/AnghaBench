; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_push.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { %struct.symtab* }
%struct.symtab = type { i32, %struct.symtab* }
%struct.lwan_var_descriptor = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*, %struct.lwan_var_descriptor*)* @symtab_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symtab_push(%struct.parser* %0, %struct.lwan_var_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lwan_var_descriptor*, align 8
  %6 = alloca %struct.symtab*, align 8
  %7 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lwan_var_descriptor* %1, %struct.lwan_var_descriptor** %5, align 8
  %8 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %5, align 8
  %9 = icmp ne %struct.lwan_var_descriptor* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %73

13:                                               ; preds = %2
  %14 = call %struct.symtab* @malloc(i32 16)
  store %struct.symtab* %14, %struct.symtab** %6, align 8
  %15 = load %struct.symtab*, %struct.symtab** %6, align 8
  %16 = icmp ne %struct.symtab* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @errno, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %13
  %21 = call i32 @hash_str_new(i32* null, i32* null)
  %22 = load %struct.symtab*, %struct.symtab** %6, align 8
  %23 = getelementptr inbounds %struct.symtab, %struct.symtab* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.symtab*, %struct.symtab** %6, align 8
  %25 = getelementptr inbounds %struct.symtab, %struct.symtab* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %69

31:                                               ; preds = %20
  %32 = load %struct.parser*, %struct.parser** %4, align 8
  %33 = getelementptr inbounds %struct.parser, %struct.parser* %32, i32 0, i32 0
  %34 = load %struct.symtab*, %struct.symtab** %33, align 8
  %35 = load %struct.symtab*, %struct.symtab** %6, align 8
  %36 = getelementptr inbounds %struct.symtab, %struct.symtab* %35, i32 0, i32 1
  store %struct.symtab* %34, %struct.symtab** %36, align 8
  %37 = load %struct.symtab*, %struct.symtab** %6, align 8
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = getelementptr inbounds %struct.parser, %struct.parser* %38, i32 0, i32 0
  store %struct.symtab* %37, %struct.symtab** %39, align 8
  br label %40

40:                                               ; preds = %60, %31
  %41 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.lwan_var_descriptor, %struct.lwan_var_descriptor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.parser*, %struct.parser** %4, align 8
  %47 = getelementptr inbounds %struct.parser, %struct.parser* %46, i32 0, i32 0
  %48 = load %struct.symtab*, %struct.symtab** %47, align 8
  %49 = getelementptr inbounds %struct.symtab, %struct.symtab* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %5, align 8
  %52 = getelementptr inbounds %struct.lwan_var_descriptor, %struct.lwan_var_descriptor* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %5, align 8
  %55 = call i32 @hash_add(i32 %50, i64 %53, %struct.lwan_var_descriptor* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %64

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %5, align 8
  %62 = getelementptr inbounds %struct.lwan_var_descriptor, %struct.lwan_var_descriptor* %61, i32 1
  store %struct.lwan_var_descriptor* %62, %struct.lwan_var_descriptor** %5, align 8
  br label %40

63:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %73

64:                                               ; preds = %58
  %65 = load %struct.symtab*, %struct.symtab** %6, align 8
  %66 = getelementptr inbounds %struct.symtab, %struct.symtab* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @hash_free(i32 %67)
  br label %69

69:                                               ; preds = %64, %28
  %70 = load %struct.symtab*, %struct.symtab** %6, align 8
  %71 = call i32 @free(%struct.symtab* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %63, %17, %10
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.symtab* @malloc(i32) #1

declare dso_local i32 @hash_str_new(i32*, i32*) #1

declare dso_local i32 @hash_add(i32, i64, %struct.lwan_var_descriptor*) #1

declare dso_local i32 @hash_free(i32) #1

declare dso_local i32 @free(%struct.symtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
