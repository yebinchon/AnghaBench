; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_lookup.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_var_descriptor = type { i32 }
%struct.parser = type { %struct.symtab* }
%struct.symtab = type { i32, %struct.symtab* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_var_descriptor* (%struct.parser*, i8*)* @symtab_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_var_descriptor* @symtab_lookup(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca %struct.lwan_var_descriptor*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.symtab*, align 8
  %7 = alloca %struct.lwan_var_descriptor*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load %struct.symtab*, %struct.symtab** %9, align 8
  store %struct.symtab* %10, %struct.symtab** %6, align 8
  br label %11

11:                                               ; preds = %25, %2
  %12 = load %struct.symtab*, %struct.symtab** %6, align 8
  %13 = icmp ne %struct.symtab* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.symtab*, %struct.symtab** %6, align 8
  %16 = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.lwan_var_descriptor* @hash_find(i32 %17, i8* %18)
  store %struct.lwan_var_descriptor* %19, %struct.lwan_var_descriptor** %7, align 8
  %20 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %21 = icmp ne %struct.lwan_var_descriptor* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  store %struct.lwan_var_descriptor* %23, %struct.lwan_var_descriptor** %3, align 8
  br label %30

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.symtab*, %struct.symtab** %6, align 8
  %27 = getelementptr inbounds %struct.symtab, %struct.symtab* %26, i32 0, i32 1
  %28 = load %struct.symtab*, %struct.symtab** %27, align 8
  store %struct.symtab* %28, %struct.symtab** %6, align 8
  br label %11

29:                                               ; preds = %11
  store %struct.lwan_var_descriptor* null, %struct.lwan_var_descriptor** %3, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %3, align 8
  ret %struct.lwan_var_descriptor* %31
}

declare dso_local %struct.lwan_var_descriptor* @hash_find(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
