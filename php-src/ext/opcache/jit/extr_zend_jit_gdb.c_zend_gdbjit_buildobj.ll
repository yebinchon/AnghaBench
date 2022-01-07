; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_gdb.c_zend_gdbjit_buildobj.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_gdb.c_zend_gdbjit_buildobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@zend_elfhdr_template = common dso_local global i32 0, align 4
@GDBJIT_SECT__MAX = common dso_local global i32 0, align 4
@GDBJIT_SYM__MAX = common dso_local global i32 0, align 4
@GDBJIT_SECT_shstrtab = common dso_local global i32 0, align 4
@zend_gdbjit_secthdr = common dso_local global i32 0, align 4
@GDBJIT_SECT_strtab = common dso_local global i32 0, align 4
@zend_gdbjit_symtab = common dso_local global i32 0, align 4
@GDBJIT_SECT_debug_info = common dso_local global i32 0, align 4
@zend_gdbjit_debuginfo = common dso_local global i32 0, align 4
@GDBJIT_SECT_debug_abbrev = common dso_local global i32 0, align 4
@zend_gdbjit_debugabbrev = common dso_local global i32 0, align 4
@GDBJIT_SECT_debug_line = common dso_local global i32 0, align 4
@zend_gdbjit_debugline = common dso_local global i32 0, align 4
@GDBJIT_SECT_eh_frame = common dso_local global i32 0, align 4
@zend_gdbjit_ehframe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @zend_gdbjit_buildobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_gdbjit_buildobj(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = call i32 @memcpy(i32* %7, i32* @zend_elfhdr_template, i32 4)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* @GDBJIT_SECT__MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32* %10, i32 0, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* @GDBJIT_SYM__MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %17, i32 0, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load i32, i32* @GDBJIT_SECT_shstrtab, align 4
  %30 = load i32, i32* @zend_gdbjit_secthdr, align 4
  %31 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = load i32, i32* @GDBJIT_SECT_strtab, align 4
  %34 = load i32, i32* @zend_gdbjit_symtab, align 4
  %35 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = load i32, i32* @GDBJIT_SECT_debug_info, align 4
  %38 = load i32, i32* @zend_gdbjit_debuginfo, align 4
  %39 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = load i32, i32* @GDBJIT_SECT_debug_abbrev, align 4
  %42 = load i32, i32* @zend_gdbjit_debugabbrev, align 4
  %43 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = load i32, i32* @GDBJIT_SECT_debug_line, align 4
  %46 = load i32, i32* @zend_gdbjit_debugline, align 4
  %47 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @SECTALIGN(i64 %50, i32 8)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = load i32, i32* @GDBJIT_SECT_eh_frame, align 4
  %54 = load i32, i32* @zend_gdbjit_ehframe, align 4
  %55 = call i32 @zend_gdbjit_initsect(%struct.TYPE_6__* %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = bitcast %struct.TYPE_5__* %60 to i8*
  %62 = ptrtoint i8* %59 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %69, 24
  %71 = zext i1 %70 to i32
  %72 = call i32 @ZEND_ASSERT(i32 %71)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @zend_gdbjit_initsect(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SECTALIGN(i64, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
