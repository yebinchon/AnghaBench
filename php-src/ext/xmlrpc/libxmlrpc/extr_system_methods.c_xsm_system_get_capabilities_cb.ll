; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_system_methods.c_xsm_system_get_capabilities_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_system_methods.c_xsm_system_get_capabilities_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"faults_interop\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"introspection\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"specURL\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"specVersion\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"http://xmlrpc-epi.sourceforge.net/specs/rfc.introspection.php\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsm_system_get_capabilities_cb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @xmlrpc_vector_struct, align 4
  %11 = call i32 @XMLRPC_CreateVector(i8* null, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @xmlrpc_vector_struct, align 4
  %13 = call i32 @XMLRPC_CreateVector(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @xmlrpc_vector_struct, align 4
  %15 = call i32 @XMLRPC_CreateVector(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @XMLRPC_VectorAppendString(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @XMLRPC_VectorAppendInt(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 20010516)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @XMLRPC_VectorAppendString(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @XMLRPC_VectorAppendInt(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 20010516)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @XMLRPC_AddValuesToVector(i32 %24, i32 %25, i32 %26, i32* null)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @XMLRPC_CreateVector(i8*, i32) #1

declare dso_local i32 @XMLRPC_VectorAppendString(i32, i8*, i8*, i32) #1

declare dso_local i32 @XMLRPC_VectorAppendInt(i32, i8*, i32) #1

declare dso_local i32 @XMLRPC_AddValuesToVector(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
