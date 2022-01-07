; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_scanner_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_scanner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@core_yy = common dso_local global i32 0, align 4
@ReservedPLKeywords = common dso_local global i32 0, align 4
@ReservedPLKeywordTokens = common dso_local global i32 0, align 4
@yyscanner = common dso_local global i32 0, align 4
@scanorig = common dso_local global i8* null, align 8
@IDENTIFIER_LOOKUP_NORMAL = common dso_local global i32 0, align 4
@plpgsql_IdentifierLookup = common dso_local global i32 0, align 4
@plpgsql_yytoken = common dso_local global i64 0, align 8
@num_pushbacks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_scanner_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @ReservedPLKeywordTokens, align 4
  %5 = call i32 @scanner_init(i8* %3, i32* @core_yy, i32* @ReservedPLKeywords, i32 %4)
  store i32 %5, i32* @yyscanner, align 4
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** @scanorig, align 8
  %7 = load i32, i32* @IDENTIFIER_LOOKUP_NORMAL, align 4
  store i32 %7, i32* @plpgsql_IdentifierLookup, align 4
  store i64 0, i64* @plpgsql_yytoken, align 8
  store i64 0, i64* @num_pushbacks, align 8
  %8 = call i32 (...) @location_lineno_init()
  ret void
}

declare dso_local i32 @scanner_init(i8*, i32*, i32*, i32) #1

declare dso_local i32 @location_lineno_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
