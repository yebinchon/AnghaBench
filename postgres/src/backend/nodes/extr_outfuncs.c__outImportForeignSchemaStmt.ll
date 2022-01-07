; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outImportForeignSchemaStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outImportForeignSchemaStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"IMPORTFOREIGNSCHEMASTMT\00", align 1
@server_name = common dso_local global i32 0, align 4
@remote_schema = common dso_local global i32 0, align 4
@local_schema = common dso_local global i32 0, align 4
@list_type = common dso_local global i32 0, align 4
@ImportForeignSchemaType = common dso_local global i32 0, align 4
@table_list = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outImportForeignSchemaStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outImportForeignSchemaStmt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @server_name, align 4
  %7 = call i32 @WRITE_STRING_FIELD(i32 %6)
  %8 = load i32, i32* @remote_schema, align 4
  %9 = call i32 @WRITE_STRING_FIELD(i32 %8)
  %10 = load i32, i32* @local_schema, align 4
  %11 = call i32 @WRITE_STRING_FIELD(i32 %10)
  %12 = load i32, i32* @list_type, align 4
  %13 = load i32, i32* @ImportForeignSchemaType, align 4
  %14 = call i32 @WRITE_ENUM_FIELD(i32 %12, i32 %13)
  %15 = load i32, i32* @table_list, align 4
  %16 = call i32 @WRITE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @options, align 4
  %18 = call i32 @WRITE_NODE_FIELD(i32 %17)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_STRING_FIELD(i32) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
