; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_adderror_unexpected_endif_eof.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_adderror_unexpected_endif_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_token = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unexpected end of file before #endif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token*)* @cf_adderror_unexpected_endif_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_adderror_unexpected_endif_eof(%struct.cf_preprocessor* %0, %struct.cf_token* %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.cf_token*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.cf_token* %1, %struct.cf_token** %4, align 8
  %5 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %6 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %7 = call i32 @cf_adderror(%struct.cf_preprocessor* %5, %struct.cf_token* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @cf_adderror(%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
