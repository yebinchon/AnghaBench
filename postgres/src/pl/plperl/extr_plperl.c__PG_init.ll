; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@_PG_init.inited = internal global i32 0, align 4
@TEXTDOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"plperl.use_strict\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"If true, trusted and untrusted Perl code will be compiled in strict mode.\00", align 1
@plperl_use_strict = common dso_local global i32 0, align 4
@PGC_USERSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"plperl.on_init\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Perl initialization code to execute when a Perl interpreter is initialized.\00", align 1
@plperl_on_init = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"plperl.on_plperl_init\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Perl initialization code to execute once when plperl is first used.\00", align 1
@plperl_on_plperl_init = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"plperl.on_plperlu_init\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Perl initialization code to execute once when plperlu is first used.\00", align 1
@plperl_on_plperlu_init = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"plperl\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"PL/Perl interpreters\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@plperl_interp_hash = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"PL/Perl procedures\00", align 1
@plperl_proc_hash = common dso_local global i8* null, align 8
@plperl_opmask = common dso_local global i32 0, align 4
@plperl_held_interp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = load i32, i32* @_PG_init.inited, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %38

5:                                                ; preds = %0
  %6 = load i32, i32* @TEXTDOMAIN, align 4
  %7 = call i32 @pg_bindtextdomain(i32 %6)
  %8 = call i32 @gettext_noop(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @PGC_USERSET, align 4
  %10 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32* null, i32* @plperl_use_strict, i32 0, i32 %9, i32 0, i32* null, i32* null, i32* null)
  %11 = call i32 @gettext_noop(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @PGC_SIGHUP, align 4
  %13 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32* null, i32* @plperl_on_init, i32* null, i32 %12, i32 0, i32* null, i32* null, i32* null)
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @PGC_SUSET, align 4
  %16 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %14, i32* null, i32* @plperl_on_plperl_init, i32* null, i32 %15, i32 0, i32* null, i32* null, i32* null)
  %17 = call i32 @gettext_noop(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @PGC_SUSET, align 4
  %19 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %17, i32* null, i32* @plperl_on_plperlu_init, i32* null, i32 %18, i32 0, i32* null, i32* null, i32* null)
  %20 = call i32 @EmitWarningsOnPlaceholders(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 8)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* @HASH_ELEM, align 4
  %25 = load i32, i32* @HASH_BLOBS, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @hash_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 8, %struct.TYPE_4__* %1, i32 %26)
  store i8* %27, i8** @plperl_interp_hash, align 8
  %28 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 8)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %30, align 4
  %31 = load i32, i32* @HASH_ELEM, align 4
  %32 = load i32, i32* @HASH_BLOBS, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @hash_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 32, %struct.TYPE_4__* %1, i32 %33)
  store i8* %34, i8** @plperl_proc_hash, align 8
  %35 = load i32, i32* @plperl_opmask, align 4
  %36 = call i32 @PLPERL_SET_OPMASK(i32 %35)
  %37 = call i32 (...) @plperl_init_interp()
  store i32 %37, i32* @plperl_held_interp, align 4
  store i32 1, i32* @_PG_init.inited, align 4
  br label %38

38:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @pg_bindtextdomain(i32) #1

declare dso_local i32 @DefineCustomBoolVariable(i8*, i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @DefineCustomStringVariable(i8*, i32, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EmitWarningsOnPlaceholders(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @PLPERL_SET_OPMASK(i32) #1

declare dso_local i32 @plperl_init_interp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
