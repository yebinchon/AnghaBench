; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_lookup_lexeme.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_symtab_lookup_lexeme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_var_descriptor = type { i32 }
%struct.parser = type { i32 }
%struct.lexeme = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@LEXEME_MAX_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Lexeme exceeds %d characters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_var_descriptor* (%struct.parser*, %struct.lexeme*)* @symtab_lookup_lexeme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca %struct.lwan_var_descriptor*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %6 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %7 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LEXEME_MAX_LEN, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* @LEXEME_MAX_LEN, align 8
  %14 = call i32 @lwan_status_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13)
  store %struct.lwan_var_descriptor* null, %struct.lwan_var_descriptor** %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.parser*, %struct.parser** %4, align 8
  %17 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %18 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %22 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @strndupa(i32 %20, i64 %24)
  %26 = call %struct.lwan_var_descriptor* @symtab_lookup(%struct.parser* %16, i32 %25)
  store %struct.lwan_var_descriptor* %26, %struct.lwan_var_descriptor** %3, align 8
  br label %27

27:                                               ; preds = %15, %12
  %28 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %3, align 8
  ret %struct.lwan_var_descriptor* %28
}

declare dso_local i32 @lwan_status_error(i8*, i64) #1

declare dso_local %struct.lwan_var_descriptor* @symtab_lookup(%struct.parser*, i32) #1

declare dso_local i32 @strndupa(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
