; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_idmap_query_attrs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_idmap_query_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_context = type { i32, %struct.idmap_config }
%struct.idmap_config = type { i32*, i32 }
%struct.idmap_lookup = type { i32 }

@FILTER_LEN = common dso_local global i32 0, align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ldap search for '%s' failed with %d: %s\0A\00", align 1
@LDAP_NO_RESULTS_RETURNED = common dso_local global i32 0, align 4
@LDAP_NO_SUCH_ATTRIBUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"ldap entry for '%s' missing required attribute '%s', returning %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_context*, %struct.idmap_lookup*, i32, i32, i32**, i32)* @idmap_query_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_query_attrs(%struct.idmap_context* %0, %struct.idmap_lookup* %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca %struct.idmap_context*, align 8
  %8 = alloca %struct.idmap_lookup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.idmap_config*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.idmap_context* %0, %struct.idmap_context** %7, align 8
  store %struct.idmap_lookup* %1, %struct.idmap_lookup** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @FILTER_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load %struct.idmap_context*, %struct.idmap_context** %7, align 8
  %25 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %24, i32 0, i32 1
  store %struct.idmap_config* %25, %struct.idmap_config** %15, align 8
  store i32* null, i32** %16, align 8
  %26 = load %struct.idmap_config*, %struct.idmap_config** %15, align 8
  %27 = load %struct.idmap_lookup*, %struct.idmap_lookup** %8, align 8
  %28 = load i32, i32* @FILTER_LEN, align 4
  %29 = call i32 @idmap_filter(%struct.idmap_config* %26, %struct.idmap_lookup* %27, i8* %23, i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %126

33:                                               ; preds = %6
  %34 = load %struct.idmap_context*, %struct.idmap_context** %7, align 8
  %35 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.idmap_config*, %struct.idmap_config** %15, align 8
  %38 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %41 = call i32 @ldap_search_st(i32 %36, i32 %39, i32 %40, i8* %23, i32* null, i32 0, i32* null, i32** %16)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @ldap_err2stringA(i32 %46)
  %48 = call i32 (i8*, i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %45, i32 %47)
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @LdapMapErrorToWin32(i32 %49)
  store i32 %50, i32* %19, align 4
  br label %126

51:                                               ; preds = %33
  %52 = load %struct.idmap_context*, %struct.idmap_context** %7, align 8
  %53 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32* @ldap_first_entry(i32 %54, i32* %55)
  store i32* %56, i32** %17, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32, i32* @LDAP_NO_RESULTS_RETURNED, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @ldap_err2stringA(i32 %62)
  %64 = call i32 (i8*, i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %61, i32 %63)
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @LdapMapErrorToWin32(i32 %65)
  store i32 %66, i32* %19, align 4
  br label %126

67:                                               ; preds = %51
  store i32 0, i32* %18, align 4
  br label %68

68:                                               ; preds = %122, %67
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i64 @ATTR_ISSET(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %72
  %78 = load %struct.idmap_context*, %struct.idmap_context** %7, align 8
  %79 = getelementptr inbounds %struct.idmap_context, %struct.idmap_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load %struct.idmap_config*, %struct.idmap_config** %15, align 8
  %83 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @ldap_get_values(i32 %80, i32* %81, i32 %88)
  %90 = load i32**, i32*** %11, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* %89, i32** %93, align 8
  %94 = load i32**, i32*** %11, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %77
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i64 @ATTR_ISSET(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @LDAP_NO_SUCH_ATTRIBUTE, align 4
  store i32 %106, i32* %19, align 4
  %107 = load %struct.idmap_config*, %struct.idmap_config** %15, align 8
  %108 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @ldap_err2stringA(i32 %115)
  %117 = call i32 (i8*, i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @LdapMapErrorToWin32(i32 %118)
  store i32 %119, i32* %19, align 4
  br label %126

120:                                              ; preds = %100, %77
  br label %121

121:                                              ; preds = %120, %72
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %68

125:                                              ; preds = %68
  br label %126

126:                                              ; preds = %125, %105, %59, %44, %32
  %127 = load i32*, i32** %16, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32*, i32** %16, align 8
  %131 = call i32 @ldap_msgfree(i32* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %19, align 4
  %134 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %134)
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @idmap_filter(%struct.idmap_config*, %struct.idmap_lookup*, i8*, i32) #2

declare dso_local i32 @ldap_search_st(i32, i32, i32, i8*, i32*, i32, i32*, i32**) #2

declare dso_local i32 @eprintf(i8*, i8*, i32, i32, ...) #2

declare dso_local i32 @ldap_err2stringA(i32) #2

declare dso_local i32 @LdapMapErrorToWin32(i32) #2

declare dso_local i32* @ldap_first_entry(i32, i32*) #2

declare dso_local i64 @ATTR_ISSET(i32, i32) #2

declare dso_local i32* @ldap_get_values(i32, i32*, i32) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
