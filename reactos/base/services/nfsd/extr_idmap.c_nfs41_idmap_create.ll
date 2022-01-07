; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_nfs41_idmap_create.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_nfs41_idmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_context = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@user_cache_ops = common dso_local global i32 0, align 4
@group_cache_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"config_init() failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ldap_init(%s) failed with %d: %s\0A\00", align 1
@LDAP_OPT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ldap_set_option(version=%d) failed with %d\0A\00", align 1
@LDAP_OPT_TIMELIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"ldap_set_option(timeout=%d) failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs41_idmap_create(%struct.idmap_context** %0) #0 {
  %2 = alloca %struct.idmap_context**, align 8
  %3 = alloca %struct.idmap_context*, align 8
  %4 = alloca i32, align 4
  store %struct.idmap_context** %0, %struct.idmap_context*** %2, align 8
  %5 = load i32, i32* @NO_ERROR, align 4
  store i32 %5, i32* %4, align 4
  %6 = call %struct.idmap_context* @calloc(i32 1, i32 32)
  store %struct.idmap_context* %6, %struct.idmap_context** %3, align 8
  %7 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %8 = icmp eq %struct.idmap_context* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @GetLastError()
  store i32 %10, i32* %4, align 4
  br label %108

11:                                               ; preds = %1
  %12 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %13 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %12, i32 0, i32 3
  %14 = call i32 @cache_init(i32* %13, i32* @user_cache_ops)
  %15 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %16 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %15, i32 0, i32 2
  %17 = call i32 @cache_init(i32* %16, i32* @group_cache_ops)
  %18 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %19 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %18, i32 0, i32 0
  %20 = call i32 @config_init(%struct.TYPE_2__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %110

26:                                               ; preds = %11
  %27 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %28 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %32 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @ldap_init(i32 %30, i32 %34)
  %36 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %37 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %39 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %26
  %43 = call i32 (...) @LdapGetLastError()
  store i32 %43, i32* %4, align 4
  %44 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %45 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ldap_err2stringA(i32 %49)
  %51 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @LdapMapErrorToWin32(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %110

54:                                               ; preds = %26
  %55 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %56 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @LDAP_OPT_PROTOCOL_VERSION, align 4
  %59 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %60 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @ldap_set_option(i32* %57, i32 %58, i8* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @LDAP_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %69 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @LdapMapErrorToWin32(i32 %74)
  store i32 %75, i32* %4, align 4
  br label %110

76:                                               ; preds = %54
  %77 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %78 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %84 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @LDAP_OPT_TIMELIMIT, align 4
  %87 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %88 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = bitcast i32* %89 to i8*
  %91 = call i32 @ldap_set_option(i32* %85, i32 %86, i8* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @LDAP_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  %96 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %97 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @LdapMapErrorToWin32(i32 %102)
  store i32 %103, i32* %4, align 4
  br label %110

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %107 = load %struct.idmap_context**, %struct.idmap_context*** %2, align 8
  store %struct.idmap_context* %106, %struct.idmap_context** %107, align 8
  br label %108

108:                                              ; preds = %110, %105, %9
  %109 = load i32, i32* %4, align 4
  ret i32 %109

110:                                              ; preds = %95, %67, %42, %23
  %111 = load %struct.idmap_context*, %struct.idmap_context** %3, align 8
  %112 = call i32 @nfs41_idmap_free(%struct.idmap_context* %111)
  br label %108
}

declare dso_local %struct.idmap_context* @calloc(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @cache_init(i32*, i32*) #1

declare dso_local i32 @config_init(%struct.TYPE_2__*) #1

declare dso_local i32 @eprintf(i8*, i32, ...) #1

declare dso_local i32* @ldap_init(i32, i32) #1

declare dso_local i32 @LdapGetLastError(...) #1

declare dso_local i32 @ldap_err2stringA(i32) #1

declare dso_local i32 @LdapMapErrorToWin32(i32) #1

declare dso_local i32 @ldap_set_option(i32*, i32, i8*) #1

declare dso_local i32 @nfs41_idmap_free(%struct.idmap_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
